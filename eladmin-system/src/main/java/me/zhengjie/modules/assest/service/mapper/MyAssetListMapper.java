package me.zhengjie.modules.assest.service.mapper;

import me.zhengjie.base.BaseMapper;
import me.zhengjie.modules.assest.domain.MyAssetList;
import me.zhengjie.modules.assest.service.dto.MyAssetListDTO;
import me.zhengjie.modules.system.service.mapper.DeptMapper;
import me.zhengjie.modules.system.service.mapper.JobMapper;
import me.zhengjie.modules.system.service.mapper.RoleMapper;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

/**
* @author zhangxingyu
* @date 2019-11-28
*/
@Mapper(componentModel = "spring", uses = {MyPrimaryCategoryMapper.class},unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface MyAssetListMapper extends BaseMapper<MyAssetListDTO, MyAssetList> {

}