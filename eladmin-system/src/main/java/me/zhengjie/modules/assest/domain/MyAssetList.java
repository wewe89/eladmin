package me.zhengjie.modules.assest.domain;

import lombok.Data;
import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.bean.copier.CopyOptions;
import me.zhengjie.modules.system.domain.Dept;
import me.zhengjie.modules.system.domain.User;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;

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

    public Integer getIdAn() {
        return idAn;
    }

    public void setIdAn(Integer idAn) {
        this.idAn = idAn;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

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
    private Boolean status;

    @Column(name = "name",nullable = false)
    private String name;

    @Column(name = "receivetime",nullable = false)
    @CreationTimestamp
    private Timestamp receivetime;


    @Column(name = "note",nullable = false)
    private String note;

    @Column(name = "amount",nullable = false)
    private Integer amount;

    public void copy(MyAssetList source){
        BeanUtil.copyProperties(source,this, CopyOptions.create().setIgnoreNullValue(true));
    }
}