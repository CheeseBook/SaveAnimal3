package com.example.demo.service.Impl;

import com.example.demo.dao.AdminMapper;
import com.example.demo.domain.Admin;
import com.example.demo.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 */
@Service
public class AdminServiceImpl implements AdminService {
    @Resource
    private AdminMapper adminMapper;

    /**
     * 添加管理员
     * @param admin 新增的管理员
     */
    @Override
    public int addAdmin(Admin admin) {
        return adminMapper.addAdmin(admin);
    }

    /**
     * 根据管理员id删除管理员
     * @param id 管理员的id
     */
    @Override
    public int deleteAdmin(Integer id) {
        return adminMapper.deleteAdmin(id);
    }

    /**
     * 更新管理员信息
     * @param admin 更新的管理员信息
     */
    @Override
    public int updateAdmin(Admin admin) {
        return adminMapper.updateAdmin(admin);
    }

    /**
     * 根据管理员id查询管理员
     * @param id  管理员id
     * @return
     */
    @Override
    public Admin findById(Integer id) {
        return adminMapper.findById(id);
    }

    /**
     * 管理员登录
     * @param admin 管理员的账号和密码
     * @return 对应账号和密码匹配的管理员对象
     */
    @Override
    public Admin loginAdmin(Admin admin) {
        return adminMapper.loginAdmin(admin);
    }

    /**
     * 根据管理员账号查询管理员
     * @param adminUsername 管理员账号
     * @return 符合条件的管理员集合
     */
    @Override
    public List<Admin> findByName(String adminUsername) {
        return adminMapper.findByName(adminUsername);
    }

    /**
     * 获取所有管理员信息
     * @return 管理员集合
     */
    @Override
    public List<Admin> getAdmins() {
        return adminMapper.getAdmins();
    }


}
