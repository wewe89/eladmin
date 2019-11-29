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
@Table(name="my_asset_list")
public class MyAssetList implements Serializable {

    // 序号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    // 一级类别
    @Column(name = "id_pc",nullable = false)
    private Integer idPc;

    // 二级类别
    @Column(name = "id_sc",nullable = false)
    private Integer idSc;

    // 资产名称
    @Column(name = "id_an")
    private Integer idAn;

    // 所属部门
    @Column(name = "id_dept",nullable = false)
    private Integer idDept;

    // 责任者
    @Column(name = "id_user",nullable = false)
    private Integer idUser;

    // 状态
    @Column(name = "status",nullable = false)
    private Integer status;

    public void copy(MyAssetList source){
        BeanUtil.copyProperties(source,this, CopyOptions.create().setIgnoreNullValue(true));
    }
}