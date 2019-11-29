package me.zhengjie.modules.assest.repository;

import me.zhengjie.modules.assest.domain.MyAssetList;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
* @author zhangxingyu
* @date 2019-11-28
*/
public interface MyAssetListRepository extends JpaRepository<MyAssetList, Long>, JpaSpecificationExecutor<MyAssetList> {
}