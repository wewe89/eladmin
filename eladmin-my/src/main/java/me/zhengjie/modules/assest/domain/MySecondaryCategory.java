package me.zhengjie.modules.assest.domain;

import lombok.Data;
import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.bean.copier.CopyOptions;
import javax.persistence.*;
import java.io.Serializable;

/**
* @author zhangxingyu
* @date 2019-11-28
*/
@Entity
@Data
@Table(name="my_secondary_category")
public class MySecondaryCategory implements Serializable {

    // id
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    // 类别
    @Column(name = "name")
    private String name;

    public void copy(MySecondaryCategory source){
        BeanUtil.copyProperties(source,this, CopyOptions.create().setIgnoreNullValue(true));
    }
}