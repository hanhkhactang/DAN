/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n.service.impl;

import com.n.pojo.Medicine;
import com.n.repository.MedicineRepository;
import com.n.service.MedicineService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Neet Nguyen
 */
@Service
@Transactional
public class MedicineServiceImpl implements MedicineService{
    
    @Autowired
    private MedicineRepository medicineRepository;

    @Override
    public List<Medicine> getMedicine() {
        return medicineRepository.getMedicine();
    }

    @Override
    public void saveMedicine(Medicine medicine) {
        medicineRepository.saveMedicine(medicine);
    }

    @Override
    public Medicine getMedicine(int id) {
        return medicineRepository.getMedicine(id);
    }

    @Override
    public void deleteMedicine(int id) {
        medicineRepository.deleteMedicine(id);
    }
    
}
