package me.zhengjie.modules.assest.rest;

import me.zhengjie.aop.log.Log;
import me.zhengjie.modules.assest.domain.MyAssetList;
import me.zhengjie.modules.assest.service.MyAssetListService;
import me.zhengjie.modules.assest.service.MyAssetNameService;
import me.zhengjie.modules.assest.service.dto.MyAssetListQueryCriteria;
import me.zhengjie.modules.system.domain.User;
import me.zhengjie.modules.system.service.UserService;
import me.zhengjie.modules.system.service.dto.UserDto;
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
@Api(tags = "MyAssetList管理")
@RestController
@RequestMapping("/api/myAssetList")
public class MyAssetListController {

    private final MyAssetListService myAssetListService;
    private final MyAssetNameService myAssetNameService;
    private final UserService userService;

    public MyAssetListController(MyAssetListService myAssetListService,MyAssetNameService myAssetNameService,UserService userService) {
        this.myAssetListService = myAssetListService;
        this.myAssetNameService=myAssetNameService;
        this.userService=userService;
    }

    @Log("导出数据")
    @ApiOperation("导出数据")
    @GetMapping(value = "/download")
    @PreAuthorize("@el.check('myAssetList:list')")
    public void download(HttpServletResponse response, MyAssetListQueryCriteria criteria) throws IOException {
        myAssetListService.download(myAssetListService.queryAll(criteria), response);
    }

    @GetMapping
    @Log("查询MyAssetList")
    @ApiOperation("查询MyAssetList")
    @PreAuthorize("@el.check('myAssetList:list')")
    public ResponseEntity getMyAssetLists(MyAssetListQueryCriteria criteria, Pageable pageable){
        return new ResponseEntity<>(myAssetListService.queryAll(criteria,pageable),HttpStatus.OK);
    }

    @PostMapping
    @Log("新增MyAssetList")
    @ApiOperation("新增MyAssetList")
    @PreAuthorize("@el.check('myAssetList:add')")
    public ResponseEntity create(@Validated @RequestBody MyAssetList resources){
        System.out.println(resources.toString());
        resources.setName(myAssetNameService.findById(resources.getIdAn()).getName());
        User user=resources.getIdUser();
        UserDto ud=userService.findByName(user.getUsername());
        user.setId(ud.getId());
        return new ResponseEntity<>(myAssetListService.create(resources),HttpStatus.CREATED);
    }

    @PutMapping
    @Log("修改MyAssetList")
    @ApiOperation("修改MyAssetList")
    @PreAuthorize("@el.check('myAssetList:edit')")
    public ResponseEntity update(@Validated @RequestBody MyAssetList resources){
        resources.setName(myAssetNameService.findById(resources.getIdAn()).getName());
        myAssetListService.update(resources);
        return new ResponseEntity(HttpStatus.NO_CONTENT);
    }

    @DeleteMapping(value = "/{id}")
    @Log("删除MyAssetList")
    @ApiOperation("删除MyAssetList")
    @PreAuthorize("@el.check('myAssetList:del')")
    public ResponseEntity delete(@PathVariable Long id){
        myAssetListService.delete(id);
        return new ResponseEntity(HttpStatus.OK);
    }
}