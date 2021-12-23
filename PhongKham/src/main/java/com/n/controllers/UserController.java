/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n.controllers;

import com.n.pojo.Patient;
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
import javax.servlet.http.HttpSession;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.MailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

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
    private BCryptPasswordEncoder passwordEncoder;
    
    @Autowired
    private WebAppValidator userValidator;
    @ModelAttribute
    public void addAttributes(Model model, HttpSession session) {
        UserAccount u =  (UserAccount) session.getAttribute("currentUser");
    }
    @InitBinder
    public void init(WebDataBinder binder) {
        binder.setValidator(userValidator);
    }
    
    @GetMapping("/register")
    public String registerView(Model model) {
        model.addAttribute("user", new UserAccount());
        return "register";
        
    }
    
    @GetMapping("/register1")
    public String registerView1(Model model) {
        model.addAttribute("user", new UserAccount());
        return "register1";
        
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
    
    @PostMapping("/register1")
    public String register(Model model, 
            @ModelAttribute(value = "user") @Valid UserAccount user,
            BindingResult result) {
        if (result.hasErrors()) {
            return "register1";
        }
        
        if (this.userDetailsService.addUser(user) == false)  {
            model.addAttribute("errMsg", "Something wrong!!!");
            return "register1";
        }
            
        
        return "redirect:/login";
    }
    
    @GetMapping("/login")
    public String loginView() {
        return "login1";
    }
    @GetMapping(path="/updateinformation")
    public String listCustomers(Model theModel) {
        List < UserAccount > theCustomers = doctorService.getCustomers();
        theModel.addAttribute("customers", theCustomers);
        return "updateinformation";
    }
    
    @GetMapping(path="/editForm")
    public String showFormForUpdate(
        Model theModel,HttpSession session) {
        UserAccount u =  (UserAccount) session.getAttribute("currentUser");
        UserAccount user = doctorService.getCustomer(u.getId());
        theModel.addAttribute("customer", user);
        return "editForm";
    }
    @GetMapping(path="/editavatar")
    public String showFormForUpdateavatar(
        Model theModel,HttpSession session) {
        UserAccount u =  (UserAccount) session.getAttribute("currentUser");
        UserAccount user = doctorService.getCustomer(u.getId());
        theModel.addAttribute("customer", user);
        return "editavatar";
    }
    
    @PostMapping("/updateUser")
    public String updateUser(@ModelAttribute("customer") UserAccount user) {
        doctorService.updateCustomer(user);
        return "redirect:/updateinformation";
    }
    @PostMapping("/updateavatar")
    public String updateUseravatar(@ModelAttribute("customer") UserAccount user) {
        doctorService.updateCustomeravatar(user);
        return "redirect:/updateinformation";
    }
    
    @RequestMapping(path="/apoitment")
    public String apoitView(Model model){
        Patient patient = new Patient();
        model.addAttribute("patient", patient);
        return "apoitment";
    }
    @GetMapping(path="/changepassword")
    public String showFormForUpdatepw(
        Model theModel,HttpSession session) {
        UserAccount u =  (UserAccount) session.getAttribute("currentUser");
        UserAccount user = doctorService.getCustomer(u.getId());
        theModel.addAttribute("customer", user);
        return "changepasswork";
    }
    
    @PostMapping("/updatepasswordUser")
    public String updatepasswordUser(@ModelAttribute("customer") UserAccount user) {
        if (user.getPassword().equals(user.getConfirmPassword())) {
            doctorService.updateCustomer(user);
            return "redirect:/updateinformation";
        }
        return "redirect:/";
    }
    
//    @RequestMapping("/dangky")
//    public String dangKyView(Model model){
//        model.addAttribute(model)
//        return "dangky";
//    }
    
  
        
}
