/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n.repository.impl;

import com.n.pojo.DonThuoc;
import com.n.pojo.Prescription;
import com.n.pojo.benhan;
import com.n.pojo.tam;
import com.n.pojo.prescriptiondetail;
import com.n.service.DoctorService;
import com.n.repository.MedicineRepository;
import com.n.repository.PrescriptionRepository;
import com.n.repository.UserRepository;
import com.n.repository.DoctorRepository;
import java.util.Map;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Neet Nguyen
 */
@Repository
public class PrescriptionRepositoryImpl implements PrescriptionRepository{
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    @Autowired
    private MedicineRepository medicineRepository;
    @Autowired
    private DoctorService doctorService;

    @Override
    @Transactional(propagation = Propagation.REQUIRED)
    public boolean addReceipt(Map<Integer, DonThuoc> dt) {
        try{
            Session session = this.sessionFactory.getObject().getCurrentSession();
 
            for(DonThuoc d: dt.values()){
                prescriptiondetail pred = new prescriptiondetail();
                pred.setIdbenhan(d.getOrderid());
                pred.setIdmedicine(d.getMedicineId());
                pred.setSoluong(d.getQuantity());
                session.save(pred);
                benhan benhan = doctorService.getbenhan(d.getOrderid());
                benhan.setActive(true);
                doctorService.editbenhan(benhan);

            }
           
            return true;
            
        }catch(HibernateException ex){
            ex.printStackTrace();
        }
        
        
        return false;
    }
    
}
