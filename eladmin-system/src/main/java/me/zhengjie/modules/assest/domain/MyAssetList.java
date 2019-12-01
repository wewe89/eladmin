package me.zhengjie.modules.assest.domain;

import lombok.Data;
import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.bean.copier.CopyOptions;
import me.zhengjie.modules.system.domain.Dept;
import me.zhengjie.modules.system.domain.User;

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
    @OneToOne
    @JoinColumn(name = "id_pc")
    private MyPrimaryCategory idPc;

    // 二级类别
    @OneToOne
    @JoinColumn(name = "id_sc")
    private MySecondaryCategory idSc;

    // 资产名称
    @Column(name = "id_an")
    private Integer idAn;

    // 所属部门
    @OneToOne
    @JoinColumn(name = "id_dept",nullable = false)
    private Dept idDept;

    // 责任者
    @OneToOne
    @JoinColumn(name = "id_user",nullable = false)
    private User idUser;

    // 状态
    @Column(name = "status",nullable = false)
    private Integer status;

    public void copy(MyAssetList source){
        BeanUtil.copyProperties(source,this, CopyOptions.create().setIgnoreNullValue(true));
    }
}