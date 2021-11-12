/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n.service;

import com.n.pojo.DonThuoc;
import java.util.Map;

/**
 *
 * @author Neet Nguyen
 */
public interface PrescriptionService {
    boolean addReceipt(Map<Integer, DonThuoc> dt);
    
}
