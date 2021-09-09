/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n.controllers;

import com.n.pojo.Customer;
import com.n.service.DoctorService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Neet Nguyen
 */
@Controller
@RequestMapping("/admin")
public class AdminController {
    @Autowired
    private DoctorService doctorService;
    
    @RequestMapping("")
    public String adminView(){
        return "adminView";
    }
    
//    @RequestMapping(path="/admin/list-doctor")
//    public String listDoctor(Model model){
//        List < Customer > customers = doctorService.getCustomers();
//        model.addAttribute("customers", customers);
//        return "listDoctor";
//    }
//    
//    @RequestMapping("/showForm")
//    public String showFormForAdd(Model model) {
//        Customer theCustomer = new Customer();
//        model.addAttribute("customer", theCustomer);
//        return "addDoctor";
//    }
//    
//    @PostMapping("/saveCustomer")
//    public String saveCustomer(@ModelAttribute("customer") Customer theCustomer) {
//        doctorService.saveCustomer(theCustomer);
//        return "redirect:/admin/list-doctor";
//    }
//    
//    @GetMapping("/updateForm")
//    public String showFormForUpdate(@RequestParam("customerId") int id,
//        Model theModel) {
//        Customer theCustomer = doctorService.getCustomer(id);
//        theModel.addAttribute("customer", theCustomer);
//        return "addDoctor";
//    }
//    
//    @GetMapping("/delete")
//    public String deleteCustomer(@RequestParam("customerId") int id) {
//        doctorService.deleteCustomer(id);
//        return "redirect:/customer/list-doctor";
//    }
     @GetMapping("/list")
    public String listCustomers(Model theModel) {
        List < Customer > theCustomers = doctorService.getCustomers();
        theModel.addAttribute("customers", theCustomers);
        return "list-customers";
    }

    @GetMapping("/showForm")
    public String showFormForAdd(Model theModel) {
        Customer theCustomer = new Customer();
        theModel.addAttribute("customer", theCustomer);
        return "customer-form";
    }

    @PostMapping("/saveCustomer")
    public String saveCustomer(@ModelAttribute("customer") Customer theCustomer) {
        doctorService.saveCustomer(theCustomer);
        return "redirect:/admin/list";
    }

    @GetMapping("/updateForm")
    public String showFormForUpdate(@RequestParam("customerId") int id,
        Model theModel) {
        Customer theCustomer = doctorService.getCustomer(id);
        theModel.addAttribute("customer", theCustomer);
        return "customer-form";
    }

    @GetMapping("/delete")
    public String deleteCustomer(@RequestParam("customerId") int id) {
        doctorService.deleteCustomer(id);
        return "redirect:/admin/list";
    }
    
}
