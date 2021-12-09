/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n.config.handler;

import com.n.service.UserService;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;
import com.n.pojo.UserAccount;

/**
 *
 * @author ADMIN
 */
@Component
public class LoginSuccessHandler implements AuthenticationSuccessHandler{
    @Autowired
    private UserService userDetailsService;
    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse responce, Authentication a) throws IOException, ServletException {
         UserAccount u = this.userDetailsService.getUsers(a.getName()).get(0);
         request.getSession().setAttribute("currentUser", u);
        responce.sendRedirect("/PhongKham");
    }
    
}
