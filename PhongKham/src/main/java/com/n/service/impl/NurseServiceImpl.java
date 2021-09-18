/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n.service.impl;

import com.n.pojo.Patient;
import com.n.repository.NurseRepository;
import com.n.service.NurseService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Neet Nguyen
 */
@Service
public class NurseServiceImpl implements NurseService{
    @Autowired
    public NurseRepository nurseRepository;

    @Override
    public List<Patient> getPatient() {
        return nurseRepository.getPatient();
       
    }
    
}
