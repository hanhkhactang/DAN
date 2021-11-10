    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n.controllers;

import com.n.pojo.Patient;
import com.n.pojo.UserAccount;
import com.n.service.NurseService;
import com.n.service.PatientService;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Admin
 */
@Controller
@ControllerAdvice
public class HomeController {

    @Autowired
    private NurseService nurseService;
    @ModelAttribute
    public void addAttributes(Model model, HttpSession session) {
        model.addAttribute("currentUser", session.getAttribute("currentUser"));
    }
    
    
    @RequestMapping("/")
    public String index() {
       
        return "index";
    }
    
    @RequestMapping(path="/departments")
    public String departmentsView(Model model){
        model.addAttribute("messages", "welcome departments");
        
        return "departments";
    }
    
    
    @RequestMapping(path="/about")
    public String aboutView(Model model){
        model.addAttribute("messages", "welcome about");
        
        return "about";
    }
    
    @RequestMapping(path="/contact")
    public String contactView(){
        
        return "contact";
    }
    
    
    
    
}
