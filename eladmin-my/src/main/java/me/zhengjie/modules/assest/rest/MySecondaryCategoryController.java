package me.zhengjie.modules.assest.rest;

import me.zhengjie.annotation.AnonymousAccess;
import me.zhengjie.aop.log.Log;
import me.zhengjie.modules.assest.domain.MySecondaryCategory;
import me.zhengjie.modules.assest.service.MySecondaryCategoryService;
import me.zhengjie.modules.assest.service.dto.MySecondaryCategoryQueryCriteria;
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
@Api(tags = "MySecondaryCategory管理")
@RestController
@RequestMapping("/api/mySecondaryCategory")
public class MySecondaryCategoryController {

    private final MySecondaryCategoryService mySecondaryCategoryService;

    public MySecondaryCategoryController(MySecondaryCategoryService mySecondaryCategoryService) {
        this.mySecondaryCategoryService = mySecondaryCategoryService;
    }

    @ApiOperation("返回全部")
    @GetMapping(value = "/all")
    @AnonymousAccess
    public ResponseEntity getAll(@PageableDefault(value = 2000, sort = {"id"}, direction = Sort.Direction.ASC) Pageable pageable){
        return new ResponseEntity<>(mySecondaryCategoryService.queryAll(pageable),HttpStatus.OK);
    }
    @Log("导出数据")
    @ApiOperation("导出数据")
    @GetMapping(value = "/download")
    @AnonymousAccess
    public void download(HttpServletResponse response, MySecondaryCategoryQueryCriteria criteria) throws IOException {
        mySecondaryCategoryService.download(mySecondaryCategoryService.queryAll(criteria), response);
    }

    @GetMapping
    @Log("查询MySecondaryCategory")
    @ApiOperation("查询MySecondaryCategory")
    @AnonymousAccess
    public ResponseEntity getMySecondaryCategorys(MySecondaryCategoryQueryCriteria criteria, Pageable pageable){
        return new ResponseEntity<>(mySecondaryCategoryService.queryAll(criteria,pageable),HttpStatus.OK);
    }

    @PostMapping
    @Log("新增MySecondaryCategory")
    @ApiOperation("新增MySecondaryCategory")
    @AnonymousAccess
    public ResponseEntity create(@Validated @RequestBody MySecondaryCategory resources){
        return new ResponseEntity<>(mySecondaryCategoryService.create(resources),HttpStatus.CREATED);
    }

    @PutMapping
    @Log("修改MySecondaryCategory")
    @ApiOperation("修改MySecondaryCategory")
    @AnonymousAccess
    public ResponseEntity update(@Validated @RequestBody MySecondaryCategory resources){
        mySecondaryCategoryService.update(resources);
        return new ResponseEntity(HttpStatus.NO_CONTENT);
    }

    @DeleteMapping(value = "/{id}")
    @Log("删除MySecondaryCategory")
    @ApiOperation("删除MySecondaryCategory")
    @AnonymousAccess
    public ResponseEntity delete(@PathVariable Integer id){
        mySecondaryCategoryService.delete(id);
        return new ResponseEntity(HttpStatus.OK);
    }
}