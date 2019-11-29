package me.zhengjie.modules.assest.service.impl;

import me.zhengjie.modules.assest.domain.MyPrimaryCategory;
import me.zhengjie.utils.ValidationUtil;
import me.zhengjie.utils.FileUtil;
import me.zhengjie.modules.assest.repository.MyPrimaryCategoryRepository;
import me.zhengjie.modules.assest.service.MyPrimaryCategoryService;
import me.zhengjie.modules.assest.service.dto.MyPrimaryCategoryDTO;
import me.zhengjie.modules.assest.service.dto.MyPrimaryCategoryQueryCriteria;
import me.zhengjie.modules.assest.service.mapper.MyPrimaryCategoryMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import me.zhengjie.utils.PageUtil;
import me.zhengjie.utils.QueryHelp;
import java.util.List;
import java.util.Map;
import java.io.IOException;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.LinkedHashMap;

/**
* @author zhangxingyu
* @date 2019-11-28
*/
@Service
@CacheConfig(cacheNames = "myPrimaryCategory")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class MyPrimaryCategoryServiceImpl implements MyPrimaryCategoryService {

    private final MyPrimaryCategoryRepository myPrimaryCategoryRepository;

    private final MyPrimaryCategoryMapper myPrimaryCategoryMapper;

    public MyPrimaryCategoryServiceImpl(MyPrimaryCategoryRepository myPrimaryCategoryRepository, MyPrimaryCategoryMapper myPrimaryCategoryMapper) {
        this.myPrimaryCategoryRepository = myPrimaryCategoryRepository;
        this.myPrimaryCategoryMapper = myPrimaryCategoryMapper;
    }

    @Override
    @Cacheable
    public Map<String,Object> queryAll(MyPrimaryCategoryQueryCriteria criteria, Pageable pageable){
        Page<MyPrimaryCategory> page = myPrimaryCategoryRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(myPrimaryCategoryMapper::toDto));
    }

    @Override
    @Cacheable
    public List<MyPrimaryCategoryDTO> queryAll(MyPrimaryCategoryQueryCriteria criteria){
        return myPrimaryCategoryMapper.toDto(myPrimaryCategoryRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder)));
    }

    @Override
    @Cacheable(key = "#p0")
    public MyPrimaryCategoryDTO findById(Integer id) {
        MyPrimaryCategory myPrimaryCategory = myPrimaryCategoryRepository.findById(id).orElseGet(MyPrimaryCategory::new);
        ValidationUtil.isNull(myPrimaryCategory.getId(),"MyPrimaryCategory","id",id);
        return myPrimaryCategoryMapper.toDto(myPrimaryCategory);
    }

    @Override
    @CacheEvict(allEntries = true)
    @Transactional(rollbackFor = Exception.class)
    public MyPrimaryCategoryDTO create(MyPrimaryCategory resources) {
        return myPrimaryCategoryMapper.toDto(myPrimaryCategoryRepository.save(resources));
    }

    @Override
    @CacheEvict(allEntries = true)
    @Transactional(rollbackFor = Exception.class)
    public void update(MyPrimaryCategory resources) {
        MyPrimaryCategory myPrimaryCategory = myPrimaryCategoryRepository.findById(resources.getId()).orElseGet(MyPrimaryCategory::new);
        ValidationUtil.isNull( myPrimaryCategory.getId(),"MyPrimaryCategory","id",resources.getId());
        myPrimaryCategory.copy(resources);
        myPrimaryCategoryRepository.save(myPrimaryCategory);
    }

    @Override
    @CacheEvict(allEntries = true)
    @Transactional(rollbackFor = Exception.class)
    public void delete(Integer id) {
        myPrimaryCategoryRepository.deleteById(id);
    }


    @Override
    public void download(List<MyPrimaryCategoryDTO> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (MyPrimaryCategoryDTO myPrimaryCategory : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("名称", myPrimaryCategory.getName());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}