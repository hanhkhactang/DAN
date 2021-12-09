/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n.configs;

import com.n.config.handler.LoginSuccessHandler;
import com.n.config.handler.LogoutHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 *
 * @author Admin
 */
//  extends WebSecurityConfigurerAdapter 
@Configuration
@EnableWebSecurity
@EnableTransactionManagement
@ComponentScan(basePackages = {
    "com.n.repository",
    "com.n.service"
})
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private UserDetailsService userDetailsService;
    @Autowired
    public AuthenticationSuccessHandler loginSuccessHandler;
    @Autowired
    public LogoutSuccessHandler LogoutHandler;

    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
        
    }
    @Bean
    public AuthenticationSuccessHandler loginSuccessHandler(){
        return new LoginSuccessHandler();
    }
    @Bean
    public LogoutSuccessHandler logoutSuccessHandler(){
        return new LogoutHandler();
    }
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.formLogin().loginPage("/login")
                .usernameParameter("username")
                .passwordParameter("password");
        
        http.formLogin().defaultSuccessUrl("/")
                .failureUrl("/login?error");
        http.formLogin().successHandler(this.loginSuccessHandler);
        //http.logout().logoutSuccessUrl("/login");
        http.logout().logoutSuccessHandler(this.LogoutHandler);
        http.exceptionHandling()
                .accessDeniedPage("/login?accessDenied");
        http.authorizeRequests().antMatchers("/").permitAll()
                .antMatchers("/**/products")
                .access("hasRole('ROLE_ADMIN')").
        antMatchers("/**/pay").access("hasAnyRole('ROLE_USER', 'ROLE_ADMIN')");
        
        http.authorizeRequests().antMatchers("/").permitAll()
               .antMatchers("/admin/**").access("hasRole('ROLE_ADMIN')");
        http.authorizeRequests().antMatchers("/").permitAll()
               .antMatchers("/doctor/**").access("hasRole('ROLE_DOCTOR')");
        
        http.authorizeRequests().antMatchers("/").permitAll()
               .antMatchers("/nurse/**").access("hasRole('ROLE_NURSE')");
        http.authorizeRequests().antMatchers("/").permitAll()
               .antMatchers("/patient/**").access("hasRole('ROLE_USER')");
        
        http.authorizeRequests().antMatchers("/").permitAll()
               .antMatchers("**/updateinformation").access("hasRole('ROLE_ADMIN')");
        http.csrf().disable();
    }

}
