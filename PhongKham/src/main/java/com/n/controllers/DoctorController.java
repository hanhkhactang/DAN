/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n.controllers;

import com.n.pojo.Patient;
import com.n.pojo.UserAccount;
import com.n.service.AdminService;
import com.n.service.DoctorService;
import com.n.service.MedicineService;
import com.n.service.NurseService;
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
    
    @Autowired
    private NurseService nurseService;
    
    @RequestMapping("")
    public String adminView(){
        return "doctorview";
        
    }
    @RequestMapping("/list")
    public String listPatient(Model model) {
        List < Patient > patient = nurseService.getPatient();
        model.addAttribute("patients", patient);
        
        return "list-patient";
    }
    
    
}
