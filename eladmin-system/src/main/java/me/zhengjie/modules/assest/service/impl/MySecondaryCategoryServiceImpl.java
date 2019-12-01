package me.zhengjie.modules.assest.service.impl;

import me.zhengjie.modules.assest.domain.MySecondaryCategory;
import me.zhengjie.utils.ValidationUtil;
import me.zhengjie.utils.FileUtil;
import me.zhengjie.modules.assest.repository.MySecondaryCategoryRepository;
import me.zhengjie.modules.assest.service.MySecondaryCategoryService;
import me.zhengjie.modules.assest.service.dto.MySecondaryCategoryDTO;
import me.zhengjie.modules.assest.service.dto.MySecondaryCategoryQueryCriteria;
import me.zhengjie.modules.assest.service.mapper.MySecondaryCategoryMapper;
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
@CacheConfig(cacheNames = "mySecondaryCategory")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class MySecondaryCategoryServiceImpl implements MySecondaryCategoryService {

    private final MySecondaryCategoryRepository mySecondaryCategoryRepository;

    private final MySecondaryCategoryMapper mySecondaryCategoryMapper;
    @Override
    @Cacheable
    public Object queryAll(Pageable pageable) {
        return mySecondaryCategoryMapper.toDto(mySecondaryCategoryRepository.findAll(pageable).getContent());
    }
    public MySecondaryCategoryServiceImpl(MySecondaryCategoryRepository mySecondaryCategoryRepository, MySecondaryCategoryMapper mySecondaryCategoryMapper) {
        this.mySecondaryCategoryRepository = mySecondaryCategoryRepository;
        this.mySecondaryCategoryMapper = mySecondaryCategoryMapper;
    }

    @Override
    @Cacheable
    public Map<String,Object> queryAll(MySecondaryCategoryQueryCriteria criteria, Pageable pageable){
        Page<MySecondaryCategory> page = mySecondaryCategoryRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(mySecondaryCategoryMapper::toDto));
    }

    @Override
    @Cacheable
    public List<MySecondaryCategoryDTO> queryAll(MySecondaryCategoryQueryCriteria criteria){
        return mySecondaryCategoryMapper.toDto(mySecondaryCategoryRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder)));
    }

    @Override
    @Cacheable(key = "#p0")
    public MySecondaryCategoryDTO findById(Integer id) {
        MySecondaryCategory mySecondaryCategory = mySecondaryCategoryRepository.findById(id).orElseGet(MySecondaryCategory::new);
        ValidationUtil.isNull(mySecondaryCategory.getId(),"MySecondaryCategory","id",id);
        return mySecondaryCategoryMapper.toDto(mySecondaryCategory);
    }

    @Override
    @CacheEvict(allEntries = true)
    @Transactional(rollbackFor = Exception.class)
    public MySecondaryCategoryDTO create(MySecondaryCategory resources) {
        return mySecondaryCategoryMapper.toDto(mySecondaryCategoryRepository.save(resources));
    }

    @Override
    @CacheEvict(allEntries = true)
    @Transactional(rollbackFor = Exception.class)
    public void update(MySecondaryCategory resources) {
        MySecondaryCategory mySecondaryCategory = mySecondaryCategoryRepository.findById(resources.getId()).orElseGet(MySecondaryCategory::new);
        ValidationUtil.isNull( mySecondaryCategory.getId(),"MySecondaryCategory","id",resources.getId());
        mySecondaryCategory.copy(resources);
        mySecondaryCategoryRepository.save(mySecondaryCategory);
    }

    @Override
    @CacheEvict(allEntries = true)
    @Transactional(rollbackFor = Exception.class)
    public void delete(Integer id) {
        mySecondaryCategoryRepository.deleteById(id);
    }


    @Override
    public void download(List<MySecondaryCategoryDTO> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (MySecondaryCategoryDTO mySecondaryCategory : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("类别", mySecondaryCategory.getName());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}