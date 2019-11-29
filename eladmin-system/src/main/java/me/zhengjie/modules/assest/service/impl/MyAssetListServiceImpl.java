package me.zhengjie.modules.assest.service.impl;

import me.zhengjie.modules.assest.domain.MyAssetList;
import me.zhengjie.utils.ValidationUtil;
import me.zhengjie.utils.FileUtil;
import me.zhengjie.modules.assest.repository.MyAssetListRepository;
import me.zhengjie.modules.assest.service.MyAssetListService;
import me.zhengjie.modules.assest.service.dto.MyAssetListDTO;
import me.zhengjie.modules.assest.service.dto.MyAssetListQueryCriteria;
import me.zhengjie.modules.assest.service.mapper.MyAssetListMapper;
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
@CacheConfig(cacheNames = "myAssetList")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class MyAssetListServiceImpl implements MyAssetListService {

    private final MyAssetListRepository myAssetListRepository;

    private final MyAssetListMapper myAssetListMapper;

    public MyAssetListServiceImpl(MyAssetListRepository myAssetListRepository, MyAssetListMapper myAssetListMapper) {
        this.myAssetListRepository = myAssetListRepository;
        this.myAssetListMapper = myAssetListMapper;
    }

    @Override
    @Cacheable
    public Map<String,Object> queryAll(MyAssetListQueryCriteria criteria, Pageable pageable){
        Page<MyAssetList> page = myAssetListRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(myAssetListMapper::toDto));
    }

    @Override
    @Cacheable
    public List<MyAssetListDTO> queryAll(MyAssetListQueryCriteria criteria){
        return myAssetListMapper.toDto(myAssetListRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder)));
    }

    @Override
    @Cacheable(key = "#p0")
    public MyAssetListDTO findById(Long id) {
        MyAssetList myAssetList = myAssetListRepository.findById(id).orElseGet(MyAssetList::new);
        ValidationUtil.isNull(myAssetList.getId(),"MyAssetList","id",id);
        return myAssetListMapper.toDto(myAssetList);
    }

    @Override
    @CacheEvict(allEntries = true)
    @Transactional(rollbackFor = Exception.class)
    public MyAssetListDTO create(MyAssetList resources) {
        return myAssetListMapper.toDto(myAssetListRepository.save(resources));
    }

    @Override
    @CacheEvict(allEntries = true)
    @Transactional(rollbackFor = Exception.class)
    public void update(MyAssetList resources) {
        MyAssetList myAssetList = myAssetListRepository.findById(resources.getId()).orElseGet(MyAssetList::new);
        ValidationUtil.isNull( myAssetList.getId(),"MyAssetList","id",resources.getId());
        myAssetList.copy(resources);
        myAssetListRepository.save(myAssetList);
    }

    @Override
    @CacheEvict(allEntries = true)
    @Transactional(rollbackFor = Exception.class)
    public void delete(Long id) {
        myAssetListRepository.deleteById(id);
    }


    @Override
    public void download(List<MyAssetListDTO> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (MyAssetListDTO myAssetList : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("一级类别", myAssetList.getIdPc());
            map.put("二级类别", myAssetList.getIdSc());
            map.put("资产名称", myAssetList.getIdAn());
            map.put("所属部门", myAssetList.getIdDept());
            map.put("责任者", myAssetList.getIdUser());
            map.put("状态", myAssetList.getStatus());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}