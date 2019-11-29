package me.zhengjie.modules.assest.service;

import me.zhengjie.modules.assest.domain.MyAssetName;
import me.zhengjie.modules.assest.service.dto.MyAssetNameDTO;
import me.zhengjie.modules.assest.service.dto.MyAssetNameQueryCriteria;
import org.springframework.data.domain.Pageable;
import java.util.Map;
import java.util.List;
import java.io.IOException;
import javax.servlet.http.HttpServletResponse;

/**
* @author zhangxingyu
* @date 2019-11-28
*/
public interface MyAssetNameService {

    /**
    * 查询数据分页
    * @param criteria 条件参数
    * @param pageable 分页参数
    * @return Map<String,Object>
    */
    Map<String,Object> queryAll(MyAssetNameQueryCriteria criteria, Pageable pageable);

    /**
    * 查询所有数据不分页
    * @param criteria 条件参数
    * @return List<MyAssetNameDTO>
    */
    List<MyAssetNameDTO> queryAll(MyAssetNameQueryCriteria criteria);

    /**
     * 根据ID查询
     * @param id ID
     * @return MyAssetNameDTO
     */
    MyAssetNameDTO findById(Integer id);

    MyAssetNameDTO create(MyAssetName resources);

    void update(MyAssetName resources);

    void delete(Integer id);

    void download(List<MyAssetNameDTO> all, HttpServletResponse response) throws IOException;
}