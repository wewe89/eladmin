package me.zhengjie.modules.assest.service.mapper;

import me.zhengjie.base.BaseMapper;
import me.zhengjie.modules.assest.domain.MyAssetName;
import me.zhengjie.modules.assest.service.dto.MyAssetNameDTO;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

/**
* @author zhangxingyu
* @date 2019-11-28
*/
@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface MyAssetNameMapper extends BaseMapper<MyAssetNameDTO, MyAssetName> {

}