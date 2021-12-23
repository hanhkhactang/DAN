/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n.service.impl;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.n.pojo.UserAccount;
import com.n.pojo.phanca;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.n.repository.AdminRepository;
import com.n.service.AdminService;
import java.io.IOException;
import java.util.Map;

/**
 *
 * @author Neet Nguyen
 */
@Service
@Transactional
public class AdminServiceImpl implements AdminService{
    
    @Autowired
    private AdminRepository doctorRepository;
    
    @Autowired(required = false)
    private Cloudinary cloudinary;

    @Override
    public List<UserAccount> getCustomers() {
        return doctorRepository.getCustomer();
    }
    
    @Override
    public List<phanca> getphanca() {
        return doctorRepository.getphanca();
    }
    
       

    @Override
    public void saveCustomer(UserAccount customer) {
        doctorRepository.saveCustomer(customer);
    }
    
    

    @Override
    public UserAccount getCustomer(int id) {
        return doctorRepository.getCustomer(id);
    }
    
    @Override
    public phanca getPhanca(int thu) {
        return doctorRepository.getPhanca(thu);
    }

    @Override
    public void deleteCustomer(int id) {
        doctorRepository.deleteCustomer(id);
    }

    @Override
    public void updateCustomer(UserAccount customer) {

            doctorRepository.updateCustomer(customer);
       
    }
    @Override
    public void updateCustomeravatar(UserAccount customer) {
        try{
   
            Map r = this.cloudinary.uploader().upload(customer.getFile().getBytes(),
                    ObjectUtils.asMap("resource_type", "auto"));
            
            customer.setAvatar((String) r.get("secure_url"));
            
            doctorRepository.updateCustomer(customer);
        }catch(IOException ex){
            ex.printStackTrace();
        }
    }
    @Override
    
    public void updatePhanca(phanca customer) {
        doctorRepository.updatePhanca(customer);
    }

    @Override
    public UserAccount getCustomer(String username) {
       return doctorRepository.getCustomer(username);
    }
    
}
