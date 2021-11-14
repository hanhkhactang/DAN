/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n.controllers;

import com.n.pojo.Patient;
import com.n.pojo.UserAccount;
import com.n.pojo.benhan;
import com.n.pojo.phanca;
import com.n.pojo.Medicine;
import com.n.pojo.prescriptiondetail;
import com.n.pojo.tam;
import com.n.service.AdminService;
import com.n.service.DoctorService;
import com.n.service.MedicineService;
import com.n.service.NurseService;
import java.util.Date;
import java.util.List;
import java.util.Map;
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
@RequestMapping("/doctor")
public class DoctorController {
    @Autowired
    private DoctorService doctorService;
    
    @Autowired
    private MedicineService medicineService;
    
    @Autowired
    private NurseService nurseService;
    
    @Autowired
    private AdminService adminService;
    
    @ModelAttribute
    public void addAttributes(Model model, HttpSession session) {
        UserAccount u =  (UserAccount) session.getAttribute("currentUser");
    }
    
    public int idbn;
    
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
    @GetMapping("/phanca")
    public String listphanca(Model theModel,HttpSession session) {
        List < phanca > theCustomers = adminService.getphanca();
        theModel.addAttribute("customers", theCustomers);
        UserAccount u =  (UserAccount) session.getAttribute("currentUser");
        UserAccount user = adminService.getCustomer(u.getId());
        theModel.addAttribute("currentUser", user);
        return "phancadoctor";
    }
    @RequestMapping("/patient-list")
    public String listPatient1(Model model){
        List < Patient > patient = nurseService.getPatient();
        model.addAttribute("patients", patient);
        
        return "patient-list";
    }
    public  int dt;
    @GetMapping("/benhan")
    public String showFormPatient(@RequestParam("patientId") int id,
            Model model) {
        List < benhan > benhan= doctorService.getbenhan();
        
        model.addAttribute("benhan", benhan);
        List < UserAccount > user = adminService.getCustomers();
        model.addAttribute("user", user);
        tam tam = new tam();
        model.addAttribute("tam", tam);
        tam.setTam(id);
        dt = id;
        return "benhan";
        
    }
    @GetMapping("/addbenhan")
    public String addbenhan(@RequestParam("patientId") int id,Model model, HttpSession session ) {
        
        UserAccount u =  (UserAccount) session.getAttribute("currentUser");
        benhan ba = new benhan();
        idbn = id;
        ba.setId_doctor(u.getId());
        ba.setId_patient(id);
        model.addAttribute("benhan", ba);
        return "addbenhan";
    }
    @PostMapping("/addbenhan")
    public String adddPatient(@ModelAttribute("benhan") benhan ba, HttpSession session) {
        UserAccount u =  (UserAccount) session.getAttribute("currentUser");
        ba.setId_doctor(u.getId());
        ba.setId_patient(idbn);
        ba.setNgaykham(new Date());
        doctorService.addbenhan(ba);
        return "redirect:/doctor/patient-list";
    }
    
    @GetMapping("/dt")
    public String keDon(Model model, @RequestParam("benhanid") int id ,Map<String, String> params){
        String kw = params.getOrDefault("kw", null);
        benhan benhan = doctorService.getbenhan(id);
        model.addAttribute("benhan", benhan);
        model.addAttribute("medicines", this.medicineService.getMedicine(kw));
        List < UserAccount > user = adminService.getCustomers();
        model.addAttribute("user", user);
        return "kedon";
    }
    @GetMapping("/chitietbenhan")
    public String chitietbenhan(@RequestParam("benhanid") int id,
            Model model) {
        List < benhan > benhan= doctorService.getbenhan();
        model.addAttribute("benhan", benhan);
        List < prescriptiondetail > prescriptiondetail= doctorService.getprescriptiondetail();
        model.addAttribute("detail", prescriptiondetail);
        List < UserAccount > user = adminService.getCustomers();
        model.addAttribute("user", user);
        List < Medicine > medicine = medicineService.getMedicine();
        model.addAttribute("medicine", medicine);
        tam tam = new tam();
        model.addAttribute("tam", tam);
        tam.setTam(id);
        dt = id;
        return "chitietbenhan";
        
    }
    
    
}
