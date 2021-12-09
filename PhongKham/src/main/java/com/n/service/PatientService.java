/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n.service;

import com.n.pojo.Patient;
import com.n.pojo.UserAccount;
import java.util.List;

/**
 *
 * @author Neet Nguyen
 */
public interface PatientService {

    public void savePatient(Patient patient);
    public void addPatient(Patient patient,UserAccount creater);
}
