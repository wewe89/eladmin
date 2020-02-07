package me.zhengjie.modules.assest.service.dto;

import lombok.Data;
import java.io.Serializable;


/**
* @author zhangxingyu
* @date 2019-11-28
*/
@Data
public class MySecondaryCategoryDTO implements Serializable {

    // id
    private Integer id;

    // 类别
    private String name;
}