/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n.controllers;

import com.n.pojo.UserAccount;
import com.n.service.UserService;
import com.n.validator.WebAppValidator;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.n.service.AdminService;
import java.util.List;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.MailSender;

/**
 *
 * @author Admin
 */
@Controller
public class UserController {
    @Autowired
    private UserService userDetailsService;
    @Autowired
    MailSender mailSender;
    @Autowired
    private AdminService doctorService;
    
    @Autowired
    private WebAppValidator userValidator;
    
    @InitBinder
    public void init(WebDataBinder binder) {
        binder.setValidator(userValidator);
    }
    
    @GetMapping("/register")
    public String registerView(Model model) {
        model.addAttribute("user", new UserAccount());
        return "register";
        
    }
    
    public void senEmail(String from, String to,String subject,String content)
    {
        SimpleMailMessage mailMessage = new SimpleMailMessage();
        mailMessage.setFrom(from);
        mailMessage.setTo(to);
        mailMessage.setSubject(subject);
        mailMessage.setText(content);
        
        mailSender.send(mailMessage);
    }
    @PostMapping("/register")
    public String register(Model model, 
            @ModelAttribute(value = "user") @Valid UserAccount user,
            BindingResult result) {
        if (result.hasErrors()) {
            return "register";
        }
        
        if (this.userDetailsService.addUser(user) == false)  {
            model.addAttribute("errMsg", "Something wrong!!!");
            return "register";
        }
            
        
        return "redirect:/login";
    }
    
    @GetMapping("/login")
    public String loginView() {
        return "login";
    }
    @GetMapping(path="/updateinformation")
    public String listCustomers(Model theModel) {
        List < UserAccount > theCustomers = doctorService.getCustomers();
        theModel.addAttribute("customers", theCustomers);
        return "updateinformation";
    }
    
    @GetMapping(path="/editForm")
    public String showFormForUpdate(@RequestParam("customerId") int id,
        Model theModel) {
        UserAccount user = doctorService.getCustomer(id);
        theModel.addAttribute("customer", user);
        return "editForm";
    }
    
    @PostMapping("/updateUser")
    public String updateUser(@ModelAttribute("customer") UserAccount user) {
        doctorService.updateCustomer(user);
        return "redirect:/updateinformation";
    }
        
}
