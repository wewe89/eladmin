package me.zhengjie.modules.assest.service.impl;

import me.zhengjie.modules.assest.domain.MyAssetName;
import me.zhengjie.utils.ValidationUtil;
import me.zhengjie.utils.FileUtil;
import me.zhengjie.modules.assest.repository.MyAssetNameRepository;
import me.zhengjie.modules.assest.service.MyAssetNameService;
import me.zhengjie.modules.assest.service.dto.MyAssetNameDTO;
import me.zhengjie.modules.assest.service.dto.MyAssetNameQueryCriteria;
import me.zhengjie.modules.assest.service.mapper.MyAssetNameMapper;
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
@CacheConfig(cacheNames = "myAssetName")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class MyAssetNameServiceImpl implements MyAssetNameService {

    private final MyAssetNameRepository myAssetNameRepository;

    private final MyAssetNameMapper myAssetNameMapper;

    public MyAssetNameServiceImpl(MyAssetNameRepository myAssetNameRepository, MyAssetNameMapper myAssetNameMapper) {
        this.myAssetNameRepository = myAssetNameRepository;
        this.myAssetNameMapper = myAssetNameMapper;
    }

    @Override
    @Cacheable
    public Map<String,Object> queryAll(MyAssetNameQueryCriteria criteria, Pageable pageable){
        Page<MyAssetName> page = myAssetNameRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(myAssetNameMapper::toDto));
    }

    @Override
    @Cacheable
    public List<MyAssetNameDTO> queryAll(MyAssetNameQueryCriteria criteria){
        return myAssetNameMapper.toDto(myAssetNameRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder)));
    }

    @Override
    @Cacheable(key = "#p0")
    public MyAssetNameDTO findById(Integer id) {
        MyAssetName myAssetName = myAssetNameRepository.findById(id).orElseGet(MyAssetName::new);
        ValidationUtil.isNull(myAssetName.getId(),"MyAssetName","id",id);
        return myAssetNameMapper.toDto(myAssetName);
    }

    @Override
    @CacheEvict(allEntries = true)
    @Transactional(rollbackFor = Exception.class)
    public MyAssetNameDTO create(MyAssetName resources) {
        return myAssetNameMapper.toDto(myAssetNameRepository.save(resources));
    }

    @Override
    @CacheEvict(allEntries = true)
    @Transactional(rollbackFor = Exception.class)
    public void update(MyAssetName resources) {
        MyAssetName myAssetName = myAssetNameRepository.findById(resources.getId()).orElseGet(MyAssetName::new);
        ValidationUtil.isNull( myAssetName.getId(),"MyAssetName","id",resources.getId());
        myAssetName.copy(resources);
        myAssetNameRepository.save(myAssetName);
    }

    @Override
    @CacheEvict(allEntries = true)
    @Transactional(rollbackFor = Exception.class)
    public void delete(Integer id) {
        myAssetNameRepository.deleteById(id);
    }


    @Override
    public void download(List<MyAssetNameDTO> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (MyAssetNameDTO myAssetName : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("资产名称", myAssetName.getName());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}