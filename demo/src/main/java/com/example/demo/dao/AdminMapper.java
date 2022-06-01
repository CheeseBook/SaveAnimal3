package com.example.demo.dao;

import com.example.demo.domain.Admin;

import java.util.List;

public interface AdminMapper {
    /**
     * 新增的管理员
     * @param admin 新增的管理员
     * @return int
     * */
    int addAdmin(Admin admin);

    /**
     * 删除管理员
     * @param id 管理员的id
     * @return int
     * */
    int deleteAdmin(Integer id);

    /**
     * 更新管理员的信息
     * @param admin 更新的管理员信息
     * @return int
     * */
    int updateAdmin(Admin admin);

    /**
     * 查询所有的管理员
     * @return list
     * */
    List<Admin> getAdmins();

    /**
     * 根据管理员id查询信息
     * @param id  管理员id
     * @return Admin
     * */
    Admin findById(Integer id);

    /**
     * 管理员的登录
     * @param admin 管理员的账号和密码
     * @return Admin
     * */
    Admin loginAdmin(Admin admin);

    /**
     * 根据管理员账号查询管理员信息
     * @param adminUsername 管理员账号
     * @return Admin
     * */
    List<Admin> findByName(String adminUsername);
}