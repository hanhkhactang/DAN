/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n.controllers;

import com.n.pojo.Medicine;
import com.n.pojo.Patient;
import com.n.service.NurseService;
import java.util.List;
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
        nurseService.savePatient(patient);
        String a = patient.getEmail();
        senEmail("benhviennguyenlap@gmail.com", a, "Xác nhận kịch khám", "Lịch khám của bạn đã được xác nhận");
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
            
}
