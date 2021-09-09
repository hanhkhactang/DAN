/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n.service.impl;

import com.n.pojo.Customer;
import com.n.repository.DoctorRepository;
import com.n.service.DoctorService;
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
public class DoctorServiceImpl implements DoctorService{
    
    @Autowired
    private DoctorRepository doctorRepository;

    @Override
    public List<Customer> getCustomers() {
        return doctorRepository.getCustomer();
    }

    @Override
    public void saveCustomer(Customer customer) {
        doctorRepository.saveCustomer(customer);
    }

    @Override
    public Customer getCustomer(int id) {
        return doctorRepository.getCustomer(id);
    }

    @Override
    public void deleteCustomer(int id) {
        doctorRepository.deleteCustomer(id);
    }
    
}
