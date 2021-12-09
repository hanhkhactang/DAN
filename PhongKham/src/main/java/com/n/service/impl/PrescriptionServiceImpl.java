/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n.service.impl;

import com.n.pojo.DonThuoc;
import com.n.repository.PrescriptionRepository;
import com.n.service.PrescriptionService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Neet Nguyen
 */
@Service
public class PrescriptionServiceImpl implements PrescriptionService{
    @Autowired
    private PrescriptionRepository prescriptionRepository;

    @Override
    public boolean addReceipt(Map<Integer, DonThuoc> dt) {
        if(dt != null)
            return this.prescriptionRepository.addReceipt(dt);
        
        return false;
    }
    
}
