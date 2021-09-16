/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n.controllers;

import com.n.pojo.UserAccount;
import com.n.service.AdminService;
import com.n.service.DoctorService;
import com.n.service.MedicineService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author ADMIN
 */
@Controller
@RequestMapping("/doctor")
public class DoctorController {
    @Autowired
    private DoctorService doctorService;
    
    @Autowired
    private MedicineService medicineService;
    
    @RequestMapping("")
    public String adminView(){
        return "doctorview";
        
    }
    @RequestMapping("/list")
    public String listCustomers(Model theModel) {
        List < UserAccount > theCustomers = doctorService.getCustomers();
        theModel.addAttribute("customers", theCustomers);
        return "list-patient";
    }
}
