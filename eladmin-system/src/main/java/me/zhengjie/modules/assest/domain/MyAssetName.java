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
@Table(name="my_asset_name")
public class MyAssetName implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    // 资产名称
    @Column(name = "name")
    private String name;
    // 资产名称
    @Column(name = "info")
    private String info;
    @Column(name = "pcid")
    private Integer pcid;
    @Column(name = "scid")
    private Integer scid;

    public void copy(MyAssetName source){
        BeanUtil.copyProperties(source,this, CopyOptions.create().setIgnoreNullValue(true));
    }
}