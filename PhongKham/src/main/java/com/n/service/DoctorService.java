/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n.service;

import com.n.pojo.Customer;
import java.util.List;

/**
 *
 * @author Neet Nguyen
 */
public interface DoctorService {
    public List < Customer > getCustomers();

    public void saveCustomer(Customer customer);

    public Customer getCustomer(int id);

    public void deleteCustomer(int id);
}
