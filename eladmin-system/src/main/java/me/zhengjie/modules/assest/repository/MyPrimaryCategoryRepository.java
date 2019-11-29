package me.zhengjie.modules.assest.repository;

import me.zhengjie.modules.assest.domain.MyPrimaryCategory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
* @author zhangxingyu
* @date 2019-11-28
*/
public interface MyPrimaryCategoryRepository extends JpaRepository<MyPrimaryCategory, Integer>, JpaSpecificationExecutor<MyPrimaryCategory> {
}