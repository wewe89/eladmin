package me.zhengjie.modules.assest.service.mapper;

import me.zhengjie.base.BaseMapper;
import me.zhengjie.modules.assest.domain.MyAssetList;
import me.zhengjie.modules.assest.service.dto.MyAssetListDTO;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

/**
* @author zhangxingyu
* @date 2019-11-28
*/
@Mapper(componentModel = "spring", uses = {MyPrimaryCategoryMapper.class},unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface MyAssetListMapper extends BaseMapper<MyAssetListDTO, MyAssetList> {

}