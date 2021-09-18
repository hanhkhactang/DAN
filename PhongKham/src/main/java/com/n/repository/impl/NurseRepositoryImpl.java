/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n.repository.impl;

import com.n.pojo.Patient;
import com.n.repository.NurseRepository;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Neet Nguyen
 */
@Repository
public class NurseRepositoryImpl implements NurseRepository{
    @Autowired
    public LocalSessionFactoryBean sessionFactory;

    @Override
    public List<Patient> getPatient() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder cb = session.getCriteriaBuilder();
        CriteriaQuery < Patient > cq = cb.createQuery(Patient.class);
        Root < Patient > root = cq.from(Patient.class);
        cq.select(root);
        Query query = session.createQuery(cq);
        return query.getResultList();
    }
    
}
