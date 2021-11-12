/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n.controllers;

import com.n.pojo.DonThuoc;
import com.n.service.PrescriptionService;
import com.n.utils.Utils;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author Neet Nguyen
 */
@RestController
public class ApiDonThuocController {
    @Autowired
    private PrescriptionService prescriptionService;
    
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
    
    @PutMapping("/doctor/api/dt")  
    public int updateDt(@RequestBody DonThuoc params, HttpSession session){
        Map<Integer, DonThuoc> dt = (Map<Integer, DonThuoc>) session.getAttribute("dt");
        
        if(dt == null)
            dt = new HashMap<>();
        
        int medicineId = params.getMedicineId();
        
        if(dt.containsKey(medicineId) == true){
            DonThuoc d = dt.get(medicineId);    
            d.setQuantity(params.getQuantity());
        }
        
        session.setAttribute("dt", dt);
        
        return Utils.countDt(dt);
    }
    
    @DeleteMapping("/doctor/api/{medicineId}")
    public int deleteDtItem(@PathVariable(value = "medicineId") int medicineId,
            HttpSession session){
        Map<Integer, DonThuoc> dt = (Map<Integer, DonThuoc>) session.getAttribute("dt");
        if(dt != null && dt.containsKey(medicineId)){    
            dt.remove(medicineId);
            
            session.setAttribute("dt", dt);
        }
        
        return Utils.countDt(dt);
    }
    
    @PostMapping("/doctor/api/confirm")
    public HttpStatus confirm(HttpSession session){
        if(this.prescriptionService.addReceipt((Map<Integer, DonThuoc>) session.getAttribute("dt"))){
            session.removeAttribute("dt");
            return HttpStatus.OK;
        }
            
        
        return HttpStatus.BAD_REQUEST;
        
    
    }
    
}
