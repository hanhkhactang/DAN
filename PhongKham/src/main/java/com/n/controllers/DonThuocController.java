/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n.controllers;

import com.n.pojo.DonThuoc;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author Neet Nguyen
 */
@Controller
public class DonThuocController {
    @GetMapping("/doctor/chitiet")
    public String chiTiet(Model model, HttpSession session){
        Map<Integer, DonThuoc> dt = (Map<Integer, DonThuoc>) session.getAttribute("dt");
        
        if(dt != null)
            model.addAttribute("dts", dt.values());
        else
            model.addAttribute("dts", null);
        
        return "chitiet";
    }
    
}
