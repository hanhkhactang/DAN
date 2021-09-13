/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n.repository;

import com.n.pojo.Medicine;
import java.util.List;

/**
 *
 * @author Neet Nguyen
 */
public interface MedicineRepository {
    public List<Medicine> getMedicine();
    public void saveMedicine(Medicine medicine);
    public Medicine getMedicine(int id);
    public void deleteMedicine(int id);
    
}
