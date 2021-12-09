/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n.service;

import com.n.pojo.UserAccount;
import com.n.pojo.benhan;
import com.n.pojo.prescriptiondetail;
import java.util.List;

/**
 *
 * @author Neet Nguyen
 */
public interface DoctorService {
    public List < UserAccount > getCustomers();

    public void saveCustomer(UserAccount customer);
    
    public void updateCustomer(UserAccount customer);

    public UserAccount getCustomer(int id);
    
    public UserAccount getCustomer(String username);

    public void deleteCustomer(int id);
    
    public List<benhan> getbenhan();
    
    public void addbenhan(benhan benhan);
    
    public benhan getbenhan(int id);
    
    public void editbenhan(benhan benhan);
    
    public List<prescriptiondetail> getprescriptiondetail();
}
