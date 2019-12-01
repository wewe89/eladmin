package me.zhengjie.modules.assest.service;

import me.zhengjie.modules.assest.domain.MySecondaryCategory;
import me.zhengjie.modules.assest.service.dto.MySecondaryCategoryDTO;
import me.zhengjie.modules.assest.service.dto.MySecondaryCategoryQueryCriteria;
import org.springframework.data.domain.Pageable;
import java.util.Map;
import java.util.List;
import java.io.IOException;
import javax.servlet.http.HttpServletResponse;

/**
* @author zhangxingyu
* @date 2019-11-28
*/
public interface MySecondaryCategoryService {

    /**
    * 查询数据分页
    * @param criteria 条件参数
    * @param pageable 分页参数
    * @return Map<String,Object>
    */
    Map<String,Object> queryAll(MySecondaryCategoryQueryCriteria criteria, Pageable pageable);

    /**
    * 查询所有数据不分页
    * @param criteria 条件参数
    * @return List<MySecondaryCategoryDTO>
    */
    List<MySecondaryCategoryDTO> queryAll(MySecondaryCategoryQueryCriteria criteria);

    Object queryAll(Pageable pageable);
    /**
     * 根据ID查询
     * @param id ID
     * @return MySecondaryCategoryDTO
     */
    MySecondaryCategoryDTO findById(Integer id);

    MySecondaryCategoryDTO create(MySecondaryCategory resources);

    void update(MySecondaryCategory resources);

    void delete(Integer id);

    void download(List<MySecondaryCategoryDTO> all, HttpServletResponse response) throws IOException;
}