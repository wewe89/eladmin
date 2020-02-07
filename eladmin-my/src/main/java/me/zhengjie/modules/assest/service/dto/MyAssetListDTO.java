package me.zhengjie.modules.assest.service.dto;

import lombok.Data;
import me.zhengjie.modules.system.domain.Dept;
import me.zhengjie.modules.system.domain.User;

import java.io.Serializable;


/**
* @author zhangxingyu
* @date 2019-11-28
*/
@Data
public class MyAssetListDTO implements Serializable {

    // 序号
    private Long id;

    // 一级类别
    private MyPrimaryCategoryDTO idPc;

    // 二级类别
    private MySecondaryCategoryDTO idSc;

    // 资产名称
    private Integer idAn;

    // 所属部门
    private Dept idDept;

    // 责任者
    private User idUser;

    // 状态
    private Boolean status;

    // 安全性
    private Integer secrecy;

    // 完整性
    private Integer integrity;

    // 可用性
    private Integer availability;

    // 法律与法规符合性
    private Integer laws;
}