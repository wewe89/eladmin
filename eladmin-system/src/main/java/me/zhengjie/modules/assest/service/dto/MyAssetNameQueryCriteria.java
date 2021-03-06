package me.zhengjie.modules.assest.service.dto;

import lombok.Data;
import me.zhengjie.annotation.Query;

/**
* @author zhangxingyu
* @date 2019-11-28
*/
@Data
public class MyAssetNameQueryCriteria{
    @Query(type = Query.Type.EQUAL)
    private Integer pcid;
    @Query(type = Query.Type.EQUAL)
    private Integer scid;
    @Query(type = Query.Type.EQUAL)
    private Boolean status;
}