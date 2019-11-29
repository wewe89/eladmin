package me.zhengjie.modules.assest.service;

import me.zhengjie.modules.assest.domain.MyAssetList;
import me.zhengjie.modules.assest.service.dto.MyAssetListDTO;
import me.zhengjie.modules.assest.service.dto.MyAssetListQueryCriteria;
import org.springframework.data.domain.Pageable;
import java.util.Map;
import java.util.List;
import java.io.IOException;
import javax.servlet.http.HttpServletResponse;

/**
* @author zhangxingyu
* @date 2019-11-28
*/
public interface MyAssetListService {

    /**
    * 查询数据分页
    * @param criteria 条件参数
    * @param pageable 分页参数
    * @return Map<String,Object>
    */
    Map<String,Object> queryAll(MyAssetListQueryCriteria criteria, Pageable pageable);

    /**
    * 查询所有数据不分页
    * @param criteria 条件参数
    * @return List<MyAssetListDTO>
    */
    List<MyAssetListDTO> queryAll(MyAssetListQueryCriteria criteria);

    /**
     * 根据ID查询
     * @param id ID
     * @return MyAssetListDTO
     */
    MyAssetListDTO findById(Long id);

    MyAssetListDTO create(MyAssetList resources);

    void update(MyAssetList resources);

    void delete(Long id);

    void download(List<MyAssetListDTO> all, HttpServletResponse response) throws IOException;
}