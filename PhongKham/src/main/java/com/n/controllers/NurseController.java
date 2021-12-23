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
import com.n.pojo.phanca;
import com.n.pojo.prescriptiondetail;
import com.n.pojo.tam;
import com.n.service.AdminService;
import com.n.service.DoctorService;
import com.n.service.NurseService;
import com.n.service.MedicineService;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
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
@RequestMapping("/nurse")
public class NurseController {
    @Autowired
    private NurseService nurseService;
    @Autowired
    private DoctorService doctorService;
    
    @Autowired
    private MedicineService medicineService;
    
    @Autowired
    private AdminService adminService;
    
    @Autowired
    MailSender mailSender;
    @RequestMapping("")
    public String nurseView(){
        return "nurseView";
    }
    
    @RequestMapping("/list-patient")
    public String listPatient(Model model){
        List < Patient > patient = nurseService.getPatient();
        model.addAttribute("patients", patient);
        
        return "patient";
    }
    
    @RequestMapping("/savePatient")
    public String savePatient(@ModelAttribute("patient") Patient patient){
        patient.setActive(true);
        nurseService.savePatient(patient);
        String a = patient.getEmail();
        senEmail("benhviennguyenlap@gmail.com", a, "Appointment Confirmation", "Your appointment has been confirmed");
        return "redirect:/nurse/list-patient";
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
    
    @GetMapping("/showInformation")
    public String showFormPatient(@RequestParam("patientId") int id,
            Model model) {
        Patient patient = nurseService.getPatient(id);
        model.addAttribute("patient", patient);
        return "informationPatient";
        
    }
    
    @GetMapping("/phanca")
    public String listphanca(Model theModel,HttpSession session) {
        List < phanca > theCustomers = adminService.getphanca();
        theModel.addAttribute("customers", theCustomers);
        UserAccount u =  (UserAccount) session.getAttribute("currentUser");
        UserAccount user = adminService.getCustomer(u.getId());
        theModel.addAttribute("currentUser", user);
        return "phancanurse";
    }
    @GetMapping("/delete")
    public String deleteCustomer(@RequestParam("patientId") int id) {
        nurseService.deletepatient(id);
        return "redirect:/nurse/list-patient";
    }
    @GetMapping("/benhan")
    public String benhan(
            Model model) {
        List < benhan > benhan= doctorService.getbenhan();
        model.addAttribute("benhan", benhan);
        List < UserAccount > user = adminService.getCustomers();
        model.addAttribute("user", user);
        List < prescriptiondetail > prescriptiondetail= doctorService.getprescriptiondetail();
        model.addAttribute("detail", prescriptiondetail);
        return "benhannurse";
        
    }
    public int idbn;
    @GetMapping("/benhanbenhnhan")
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
        idbn=id;
        return "benhanbenhnhan";
    }
    @GetMapping("/xacnhan")
    public String benhanbenhnhan( HttpSession session) {
        benhan b = new benhan();
        b = doctorService.getbenhan(idbn);
        b.setXacnhanyta(true);
        doctorService.editbenhan(b);
        return "redirect:/nurse/benhan";
    }
}
