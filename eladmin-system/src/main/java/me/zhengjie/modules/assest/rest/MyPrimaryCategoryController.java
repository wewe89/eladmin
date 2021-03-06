package me.zhengjie.modules.assest.rest;

import me.zhengjie.annotation.AnonymousAccess;
import me.zhengjie.aop.log.Log;
import me.zhengjie.modules.assest.domain.MyPrimaryCategory;
import me.zhengjie.modules.assest.service.MyPrimaryCategoryService;
import me.zhengjie.modules.assest.service.dto.MyPrimaryCategoryQueryCriteria;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import io.swagger.annotations.*;
import java.io.IOException;
import javax.servlet.http.HttpServletResponse;

/**
* @author zhangxingyu
* @date 2019-11-28
*/
@Api(tags = "MyPrimaryCategory管理")
@RestController
@RequestMapping("/api/myPrimaryCategory")
public class MyPrimaryCategoryController {

    private final MyPrimaryCategoryService myPrimaryCategoryService;

    public MyPrimaryCategoryController(MyPrimaryCategoryService myPrimaryCategoryService) {
        this.myPrimaryCategoryService = myPrimaryCategoryService;
    }
    @ApiOperation("返回全部")
    @GetMapping(value = "/all")
    @AnonymousAccess
    public ResponseEntity getAll(){
        return new ResponseEntity<>(myPrimaryCategoryService.queryAll(),HttpStatus.OK);
    }

    @PostMapping
    @Log("新增MyPrimaryCategory")
    @ApiOperation("新增MyPrimaryCategory")
    @AnonymousAccess
    public ResponseEntity create(@Validated @RequestBody MyPrimaryCategory resources){
        return new ResponseEntity<>(myPrimaryCategoryService.create(resources),HttpStatus.CREATED);
    }

    @PutMapping
    @Log("修改MyPrimaryCategory")
    @ApiOperation("修改MyPrimaryCategory")
    @PreAuthorize("@el.check('myPrimaryCategory:edit')")
    public ResponseEntity update(@Validated @RequestBody MyPrimaryCategory resources){
        myPrimaryCategoryService.update(resources);
        return new ResponseEntity(HttpStatus.NO_CONTENT);
    }

    @DeleteMapping(value = "/{id}")
    @Log("删除MyPrimaryCategory")
    @ApiOperation("删除MyPrimaryCategory")
    @PreAuthorize("@el.check('myPrimaryCategory:del')")
    public ResponseEntity delete(@PathVariable Integer id){
        myPrimaryCategoryService.delete(id);
        return new ResponseEntity(HttpStatus.OK);
    }
}