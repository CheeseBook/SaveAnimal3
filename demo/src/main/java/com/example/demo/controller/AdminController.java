package com.example.demo.controller;

import com.example.demo.domain.Admin;
import com.example.demo.service.AdminService;
import com.example.demo.util.AjaxResult;
import com.example.demo.util.Message;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.text.ParseException;
import java.util.HashMap;
import java.util.List;

/**
 */
@Controller
@RequestMapping("admin")
public class AdminController {

    @Autowired
    private AdminService adminService;

    /**
     * 查找所有管理员
     * @param pn 页码
     * @return 提示信息Message
     */
    @RequestMapping("admins.action")
    @ResponseBody
    public Message getAdmins(@RequestParam(value = "pn",defaultValue = "1") Integer pn){
        // 引入PageHelper分页插件
        // 在查询之前只需要调用，传入页码，以及每页的大小
        PageHelper.startPage(pn,4);
        List<Admin> admins = adminService.getAdmins();
        // startPage后面紧跟的这个查询就是一个分页查询
        System.out.println(admins+"admins");
        // 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
        // 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
        PageInfo page=new PageInfo(admins,3);
        return Message.success().add("pageInfo",page);
    }

    /**
     * 创建管理员
     * @param admin 管理员对象
     * @return 提示信息
     */
    @RequestMapping("create.action")
    @ResponseBody
    public Message addAdmin(Admin admin){
        int i = adminService.addAdmin(admin);
        System.out.println(i);
        if(i>0){
            return Message.success();
        }else{
            return Message.fail();
        }
    }

    /**
     * 根据管理员编号查找管理员
     * @param id 管理员编号
     * @return 相关信息
     */
    @RequestMapping("findById.action")
    @ResponseBody
    public Message findById(Integer id) throws ParseException {
        Admin admin = adminService.findById(id);
        if(admin!=null){
            return Message.success().add("admin",admin);
        }else{
            return Message.fail();
        }
    }

    /**
     * 更新管理员信息
     * @param admin 最新的管理员信息
     * @return 提示信息
     */
    @RequestMapping("update.action")
    @ResponseBody
    public Message updateAdmin(Admin admin){
        int i = adminService.updateAdmin(admin);
        System.out.println(i);
        if(i>0){
            return Message.success();
        }else{
            return Message.fail();
        }
    }

    /**
     * 根据管理员id删除管理员
     * @param id 管理员id
     * @return 提示信息
     */
    @RequestMapping("delete.action")
    @ResponseBody
    public Message deleteAdmin(Integer id){
        int i = adminService.deleteAdmin(id);
        if(i>0){
            return Message.success();
        }else{
            return Message.fail();
        }
    }

    /**
     * 根据管理员账号查询管理员
     * @param pn 页码
     * @param adminUsername 管理员账号
     * @return 提示信息
     */
    @RequestMapping("/findByName.action")
    @ResponseBody
    public Message findByName(@RequestParam(value = "pn",defaultValue = "1") Integer pn,String adminUsername){
        PageHelper.startPage(pn,4);
        List<Admin> admins = adminService.findByName(adminUsername);
        if(admins!=null){
            PageInfo page = new PageInfo(admins,2);
            return Message.success().add("pageInfo",page);
        }else{
            return Message.fail();
        }
    }

    @RequestMapping("login.action")
    @ResponseBody
    public AjaxResult login(Admin admin, HttpServletRequest request){
        AjaxResult result = new AjaxResult();
        Admin admin1 = adminService.loginAdmin(admin);
        request.getSession().setAttribute("admin",admin1);
        if(admin1!=null){
            result.setSuccess(true);
        }else {
            result.setSuccess(false);
            result.setMessage("用户名或密码错误");
        }
        return result;
    }
}
