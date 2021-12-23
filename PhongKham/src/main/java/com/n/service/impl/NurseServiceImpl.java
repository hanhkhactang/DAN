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
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Neet Nguyen
 */
@Service
@Transactional
public class NurseServiceImpl implements NurseService{
    @Autowired
    public NurseRepository nurseRepository;

    @Override
    public List<Patient> getPatient() {
        return nurseRepository.getPatient();
       
    }

    @Override
    public void savePatient(Patient patient) {
        nurseRepository.savePatient(patient);
    }

    @Override
    public Patient getPatient(int id) {
        return nurseRepository.getPatient(id);
    }
    @Override
    public void deletepatient(int id) {
        nurseRepository.deletepatient(id);
    }
    
    
}
