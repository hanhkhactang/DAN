/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n.service;

import com.n.pojo.UserAccount;
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

    public void deleteCustomer(int id);
}
