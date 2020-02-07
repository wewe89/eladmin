package me.zhengjie.modules.assest.rest;

import me.zhengjie.annotation.AnonymousAccess;
import me.zhengjie.aop.log.Log;
import me.zhengjie.modules.assest.domain.MyAssetName;
import me.zhengjie.modules.assest.service.MyAssetNameService;
import me.zhengjie.modules.assest.service.dto.MyAssetNameQueryCriteria;
import org.springframework.data.domain.Pageable;
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
@Api(tags = "MyAssetName管理")
@RestController
@RequestMapping("/api/myAssetName")
public class MyAssetNameController {

    private final MyAssetNameService myAssetNameService;

    public MyAssetNameController(MyAssetNameService myAssetNameService) {
        this.myAssetNameService = myAssetNameService;
    }

    @Log("导出数据")
    @ApiOperation("导出数据")
    @GetMapping(value = "/download")
    @AnonymousAccess
    public void download(HttpServletResponse response, MyAssetNameQueryCriteria criteria) throws IOException {
        myAssetNameService.download(myAssetNameService.queryAll(criteria), response);
    }

    @GetMapping
    @Log("查询MyAssetName")
    @ApiOperation("查询MyAssetName")
    @AnonymousAccess
    public ResponseEntity getMyAssetNames(MyAssetNameQueryCriteria criteria, Pageable pageable){
        return new ResponseEntity<>(myAssetNameService.queryAll(criteria,pageable),HttpStatus.OK);
    }

    @PostMapping
    @Log("新增MyAssetName")
    @ApiOperation("新增MyAssetName")
    @AnonymousAccess
    public ResponseEntity create(@Validated @RequestBody MyAssetName resources){
        return new ResponseEntity<>(myAssetNameService.create(resources),HttpStatus.CREATED);
    }

    @PutMapping
    @Log("修改MyAssetName")
    @ApiOperation("修改MyAssetName")
    @PreAuthorize("@el.check('myAssetName:edit')")
    public ResponseEntity update(@Validated @RequestBody MyAssetName resources){
        myAssetNameService.update(resources);
        return new ResponseEntity(HttpStatus.NO_CONTENT);
    }

    @DeleteMapping(value = "/{id}")
    @Log("删除MyAssetName")
    @ApiOperation("删除MyAssetName")
    @PreAuthorize("@el.check('myAssetName:del')")
    public ResponseEntity delete(@PathVariable Integer id){
        myAssetNameService.delete(id);
        return new ResponseEntity(HttpStatus.OK);
    }
}