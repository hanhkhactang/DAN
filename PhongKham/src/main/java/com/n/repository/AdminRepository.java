/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n.repository;

import com.n.pojo.UserAccount;
import com.n.pojo.phanca;
import java.util.List;

/**
 *
 * @author Neet Nguyen
 */
public interface AdminRepository {
    public List<UserAccount> getCustomer();
    public List<phanca> getphanca();
    public void saveCustomer(UserAccount customer);
    public UserAccount getCustomer(int id);
    public phanca getPhanca(int thu);
    public UserAccount getCustomer(String username);
    public void deleteCustomer(int id);
    public void updateCustomer(UserAccount customer);
    public void updatePhanca(phanca customer);
   
}
