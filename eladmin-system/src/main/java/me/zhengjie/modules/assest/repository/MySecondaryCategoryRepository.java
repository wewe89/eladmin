package me.zhengjie.modules.assest.repository;

import me.zhengjie.modules.assest.domain.MySecondaryCategory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
* @author zhangxingyu
* @date 2019-11-28
*/
public interface MySecondaryCategoryRepository extends JpaRepository<MySecondaryCategory, Integer>, JpaSpecificationExecutor<MySecondaryCategory> {
}