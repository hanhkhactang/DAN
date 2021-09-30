/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n.controllers;

import com.n.pojo.Cart;
import com.n.pojo.Patient;
import com.n.service.CategoryService;
import com.n.service.NurseService;
import com.n.service.PatientService;
import com.n.service.ProductService;
import com.n.utils.Utils;
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
    private CategoryService categoryService;
    @Autowired
    private ProductService productService;
    @Autowired
    private NurseService nurseService;
    @ModelAttribute
    public void addAttributes(Model model, HttpSession session) {
        model.addAttribute("categories", this.categoryService.getCategories());
        model.addAttribute("cartStats", Utils.getCartStats((Map<Integer, Cart>) session.getAttribute("cart")));
    }
    
    @RequestMapping("/")
    public String index(Model model, 
            @RequestParam(name = "cateId", required = false) String cateId,
            @RequestParam(name = "kw", required = false, defaultValue = "") String kw) {
        
        if (cateId == null)
            model.addAttribute("products", this.productService.getProducts(kw));
        else
            model.addAttribute("products", 
                    this.categoryService.getCateById(Integer.parseInt(cateId)).getProducts());
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
     @GetMapping("/dkkham")
    public String adddkkham(Model model) {
        Patient patient = new Patient();
        model.addAttribute("patient", patient);
        return "dkkham";
    }
    @PostMapping("/addPatient")
    public String adddPatient(@ModelAttribute("patient") Patient patient) {
        nurseService.savePatient(patient);
        return "redirect:/";
    }
    
    
}
