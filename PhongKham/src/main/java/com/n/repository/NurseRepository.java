/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n.repository;

import com.n.pojo.Patient;
import java.util.List;

/**
 *
 * @author Neet Nguyen
 */
public interface NurseRepository {
    public List < Patient > getPatient();
    public void savePatient(Patient patient);
    public Patient getPatient(int id);
    
}
