/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n.controllers;

import com.n.pojo.DonThuoc;
import com.n.utils.Utils;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author Neet Nguyen
 */
@RestController
public class ApiDonThuocController {
    @PostMapping("/doctor/api/dt")
    public int addToDonThuoc(@RequestBody DonThuoc params, HttpSession session){
        Map<Integer, DonThuoc> dt = (Map<Integer, DonThuoc>) session.getAttribute("dt");
        
        if(dt == null)
            dt = new HashMap<>();
        
        int medicineId = params.getMedicineId();
        
        if(dt.containsKey(medicineId) == true){
            DonThuoc d = dt.get(medicineId);    
            d.setQuantity(d.getQuantity() + 1);
        }else{
            dt.put(medicineId, params);
        }
        
        session.setAttribute("dt", dt);
        
        return Utils.countDt(dt);
        
    }
    
}
