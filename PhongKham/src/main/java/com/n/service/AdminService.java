/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n.service;

import com.n.pojo.UserAccount;
import com.n.pojo.phanca;
import java.util.List;

/**
 *
 * @author Neet Nguyen
 */
public interface AdminService {
    public List < UserAccount > getCustomers();
    
    public List < phanca > getphanca();

    public void saveCustomer(UserAccount customer);
    
    public void updateCustomer(UserAccount customer);
    
    public void updateCustomeravatar(UserAccount customer);
    
    public void updatePhanca(phanca customer);

    public UserAccount getCustomer(int id);
    
    public phanca getPhanca(int thu);
    
    public UserAccount getCustomer(String username);

    public void deleteCustomer(int id);
}
