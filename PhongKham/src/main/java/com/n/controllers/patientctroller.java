/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n.controllers;

import com.n.pojo.Medicine;
import com.n.pojo.Patient;
import com.n.pojo.UserAccount;
import com.n.pojo.benhan;
import com.n.pojo.prescriptiondetail;
import com.n.pojo.tam;
import com.n.service.NurseService;
import com.n.service.DoctorService;
import com.n.service.AdminService;
import com.n.service.MedicineService;
import java.util.List;
import javax.servlet.http.HttpSession;
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
 * @author ADMIN
 */ 
@Controller
@RequestMapping("/patient")
public class patientctroller {
    @Autowired
    private NurseService nurseService;
    
    @Autowired
    private DoctorService doctorService;
    
    @Autowired
    private AdminService adminService;
    
    @Autowired
    private MedicineService medicineService;
    
    @GetMapping("/dkkham")
    public String adddkkham(Model model ) {
        Patient patient = new Patient();
        model.addAttribute("patient", patient);
        return "apoitment";
    }
    @PostMapping("/addPatient")
    public String adddPatient(@ModelAttribute("patient") Patient patient, HttpSession session) {
        UserAccount u =  (UserAccount) session.getAttribute("currentUser");
        patient.setEmail(u.getEmail());
        patient.setName(u.getFirstName());
        patient.setId_user(u.getId());
        nurseService.savePatient(patient);
        return "redirect:/";
    }
    @GetMapping("/toathuoc")
    public String chitietbenhan(
            Model model, HttpSession session) {
        List < benhan > benhan= doctorService.getbenhan();
        model.addAttribute("benhan", benhan);
        List < prescriptiondetail > prescriptiondetail= doctorService.getprescriptiondetail();
        model.addAttribute("detail", prescriptiondetail);
        UserAccount u =  (UserAccount) session.getAttribute("currentUser");
        model.addAttribute("u", u);
        List < Medicine > medicine = medicineService.getMedicine();
        model.addAttribute("medicine", medicine);;
        List < UserAccount > user = adminService.getCustomers();
        model.addAttribute("user", user);
        return "toathuoc";
        
    }
    
}
