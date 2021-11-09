/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n.repository;

import com.n.pojo.UserAccount;
import com.n.pojo.benhan;
import java.util.List;

/**
 *
 * @author Neet Nguyen
 */
public interface DoctorRepository {
    public List<UserAccount> getCustomer();
    public void saveCustomer(UserAccount customer);
    public UserAccount getCustomer(int id);
    public List<benhan> getbenhan(int id_patient);
    public UserAccount getCustomer(String username);
    public void deleteCustomer(int id);
    public void updateCustomer(UserAccount customer);
    public void addbenhan(benhan benhan);
   
}
