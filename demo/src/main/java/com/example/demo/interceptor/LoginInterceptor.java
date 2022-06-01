package com.example.demo.interceptor;

import com.example.demo.domain.Admin;
import org.springframework.util.StringUtils;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws IOException {
        Admin admin = (Admin) request.getSession().getAttribute("admin");
        if(!StringUtils.isEmpty(admin)){
            return true;
        }
        response.sendRedirect(request.getContextPath() + "/animal/login.jsp");
        return false;
    }
}
