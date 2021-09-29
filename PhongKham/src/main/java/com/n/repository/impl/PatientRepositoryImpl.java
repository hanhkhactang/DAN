/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n.repository.impl;

import com.n.pojo.Patient;
import com.n.repository.PatientRepository;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Neet Nguyen
 */
@Repository
public class PatientRepositoryImpl implements PatientRepository{
    
    @Autowired
    public LocalSessionFactoryBean SessionFactory;
    @Autowired
    public SessionFactory sessionFactory;

    @Override
    public void savePatient(Patient patient) {
        patient.setActive(false);
        Session s = this.SessionFactory.getObject().getCurrentSession();
        s.save(s);
    }
    @Override
    public void addPatient(Patient patient) {
        patient.setActive(false);
        Session s = sessionFactory.getCurrentSession();
        s.save(patient);
    }
}
