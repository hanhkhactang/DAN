/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n.controllers;

import com.n.pojo.Medicine;
import com.n.pojo.UserAccount;
import com.n.pojo.phanca;
import com.n.service.MedicineService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.n.service.AdminService;

/**
 *
 * @author Neet Nguyen
 */
@Controller
@RequestMapping("/admin")
public class AdminController {
    @Autowired
    private AdminService doctorService;
    
    @Autowired
    private MedicineService medicineService;
    
    @RequestMapping("")
    public String adminView(){
        return "adminView";
    }
    
    
    
    //Quản lý nhan vien
    @GetMapping("/list")
    public String listCustomers(Model theModel) {
        List < UserAccount > theCustomers = doctorService.getCustomers();
        theModel.addAttribute("customers", theCustomers);
        return "list-customers";
    }
    
    @GetMapping("/phanca")
    public String listphanca(Model theModel) {
        List < phanca > theCustomers = doctorService.getphanca();
        theModel.addAttribute("customers", theCustomers);
        List < UserAccount > user = doctorService.getCustomers();
        theModel.addAttribute("user", user);
        return "phanca";
    }

    @GetMapping("/showForm")
    public String showFormForAdd(Model theModel) {
        UserAccount theCustomer = new UserAccount();
        theModel.addAttribute("customer", theCustomer);
        return "addDoctor";
    }

    @PostMapping("/saveCustomer")
    public String saveCustomer(@ModelAttribute("customer") UserAccount theCustomer) {
        doctorService.saveCustomer(theCustomer);
        return "redirect:/admin/list";
    }
    
    @PostMapping("/updateCustomer")
    public String updateCustomer(@ModelAttribute("customer") UserAccount theCustomer) {
        doctorService.updateCustomer(theCustomer);
        return "redirect:/admin/list";
    }

    @GetMapping("/updateForm")
    public String showFormForUpdate(@RequestParam("customerId") int id,
        Model theModel) {
        UserAccount theCustomer = doctorService.getCustomer(id);
        theModel.addAttribute("customer", theCustomer);
        return "editEmployee";
    }

    @GetMapping("/delete")
    public String deleteCustomer(@RequestParam("customerId") int id) {
        doctorService.deleteCustomer(id);
        return "redirect:/admin/list";
    }
    @GetMapping("/updatephanca")
    public String updatephanca(@RequestParam("customerId") int thu,
        Model theModel) {
        phanca theCustomer = doctorService.getPhanca(thu);
        theModel.addAttribute("customer", theCustomer);
        List < UserAccount > user = doctorService.getCustomers();
        theModel.addAttribute("user", user);
        return "editphanca";
    }
    @PostMapping("/updatephanca")
    public String updatephanca(@ModelAttribute("customer") phanca theCustomer) {
        doctorService.updatePhanca(theCustomer);
        return "redirect:/admin/phanca";
    }

    @GetMapping("/deletephanca")
    public String deletephanca(@RequestParam("customerId") int id) {
        doctorService.deleteCustomer(id);
        return "redirect:/admin/list";
    }
    
    
    
    
    
    //Quản lý thuốc
    @GetMapping("/listMedicine")
    public String listMedicine(Model theModel) {
//        List < Medicine > theMedicines = medicineService.getMedicine();
//        theModel.addAttribute("medicines", theMedicines);
        List<Medicine> theMedicines = medicineService.getMedicine();
        theModel.addAttribute("medicines", theMedicines);
        return "list-medicine";
    }
    
    
    @GetMapping("/showFormMedicine")
    public String showFormMedicine(Model theModel) {
        Medicine theMedicine = new Medicine();
        theModel.addAttribute("medicine", theMedicine);
        return "medicine-form";
    }
    
    
    
    
    @PostMapping("/saveMedicine")
    public String saveMedicine(@ModelAttribute("medicine") Medicine medicine) {
        medicineService.saveMedicine(medicine);
        return "redirect:/admin/listMedicine";
    }
    
    @GetMapping("/updateFormMedicine")
    public String showFormForUpdateMedicine(@RequestParam("medicineId") int theId,
        Model theModel) {
        Medicine medicine = medicineService.getMedicine(theId);
        theModel.addAttribute("medicine", medicine);
        return "medicine-form";
    }
    
    @GetMapping("/deleteMedicine")
    public String deleteMedicine(@RequestParam("medicineId") int theId) {
        medicineService.deleteMedicine(theId);
        return "redirect:/admin/listMedicine";
    }
    
    
}
