package me.zhengjie.modules.assest.repository;

import me.zhengjie.modules.assest.domain.MyAssetName;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
* @author zhangxingyu
* @date 2019-11-28
*/
public interface MyAssetNameRepository extends JpaRepository<MyAssetName, Integer>, JpaSpecificationExecutor<MyAssetName> {
}