package me.zhengjie.modules.assest.service.dto;

import lombok.Data;
import me.zhengjie.annotation.Query;

/**
* @author zhangxingyu
* @date 2019-11-28
*/
@Data
public class MyAssetListQueryCriteria{

    // 模糊
    @Query(type = Query.Type.INNER_LIKE)
    private Integer idAn;
}