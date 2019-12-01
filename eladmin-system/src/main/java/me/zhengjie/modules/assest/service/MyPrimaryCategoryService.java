package me.zhengjie.modules.assest.service;

import me.zhengjie.modules.assest.domain.MyPrimaryCategory;
import me.zhengjie.modules.assest.service.dto.MyPrimaryCategoryDTO;
import me.zhengjie.modules.assest.service.dto.MyPrimaryCategoryQueryCriteria;
import org.springframework.data.domain.Pageable;
import java.util.Map;
import java.util.List;
import java.io.IOException;
import javax.servlet.http.HttpServletResponse;

/**
* @author zhangxingyu
* @date 2019-11-28
*/
public interface MyPrimaryCategoryService {

    /**
    * 查询数据分页
    * @param criteria 条件参数
    * @param pageable 分页参数
    * @return Map<String,Object>
    */
    Map<String,Object> queryAll(MyPrimaryCategoryQueryCriteria criteria, Pageable pageable);

    Object queryAll(Pageable pageable);
    /**
    * 查询所有数据不分页
    * @param criteria 条件参数
    * @return List<MyPrimaryCategoryDTO>
    */
    List<MyPrimaryCategoryDTO> queryAll(MyPrimaryCategoryQueryCriteria criteria);

    /**
     * 根据ID查询
     * @param id ID
     * @return MyPrimaryCategoryDTO
     */
    MyPrimaryCategoryDTO findById(Integer id);

    MyPrimaryCategoryDTO create(MyPrimaryCategory resources);

    void update(MyPrimaryCategory resources);

    void delete(Integer id);

    void download(List<MyPrimaryCategoryDTO> all, HttpServletResponse response) throws IOException;
}