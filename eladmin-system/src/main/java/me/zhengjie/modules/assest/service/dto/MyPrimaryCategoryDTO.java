package me.zhengjie.modules.assest.service.dto;

import lombok.Data;
import java.io.Serializable;


/**
* @author zhangxingyu
* @date 2019-11-28
*/
@Data
public class MyPrimaryCategoryDTO implements Serializable {

    // ID
    private Integer id;

    // 名称
    private String name;
}