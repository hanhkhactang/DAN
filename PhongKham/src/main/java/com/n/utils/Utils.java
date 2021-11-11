/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n.utils;

import com.n.pojo.DonThuoc;
import java.util.Map;

/**
 *
 * @author Neet Nguyen
 */
public class Utils {
    public static int countDt(Map<Integer, DonThuoc> dt){
        int q = 0;
        
        if(dt != null)
            for(DonThuoc d: dt.values())
                q += d.getQuantity();
        
        return q;
    }
    
}
