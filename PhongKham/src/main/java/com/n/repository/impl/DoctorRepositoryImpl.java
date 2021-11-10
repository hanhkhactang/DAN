/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n.repository.impl;

import com.n.pojo.UserAccount;
import com.n.pojo.benhan;
import com.n.pojo.prescriptiondetail;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import com.n.repository.DoctorRepository;

/**
 *
 * @author Neet Nguyen
 */
@Repository
public class DoctorRepositoryImpl implements DoctorRepository{
    
    @Autowired
    private SessionFactory sessionFactory;
    
    @Autowired
    private LocalSessionFactoryBean localSessionFactoryBean;
    
    @Autowired
    private BCryptPasswordEncoder passwordEncoder;
    
    

    @Override
    public List<UserAccount> getCustomer() {
        Session session = sessionFactory.getCurrentSession();
        CriteriaBuilder cb = session.getCriteriaBuilder();
        CriteriaQuery < UserAccount > cq = cb.createQuery(UserAccount.class);
        Root < UserAccount > root = cq.from(UserAccount.class);
        cq.select(root);
        Query query = session.createQuery(cq);
        return query.getResultList();
        
    }

    @Override
    public void saveCustomer(UserAccount customer) {
        customer.setPassword(this.passwordEncoder.encode(customer.getPassword()));
//        Session currentSession = sessionFactory.getCurrentSession();
        Session s = this.localSessionFactoryBean.getObject().getCurrentSession();
        s.saveOrUpdate(customer);
    }

    @Override
    public UserAccount getCustomer(int id) {
        Session currentSession = sessionFactory.getCurrentSession();
        UserAccount theCustomer = currentSession.get(UserAccount.class, id);
        return theCustomer;
    }
    @Override
    public UserAccount getCustomer(String username) {
        Session currentSession = sessionFactory.getCurrentSession();
        UserAccount theCustomer = currentSession.get(UserAccount.class, username);
        return theCustomer;
    }

    @Override
    public void deleteCustomer(int id) {
        Session session = sessionFactory.getCurrentSession();
        UserAccount book = session.byId(UserAccount.class).load(id);
        session.delete(book);
    }

    @Override
    public void updateCustomer(UserAccount customer) {
//        Session currentSession = sessionFactory.getCurrentSession();
        Session s = this.localSessionFactoryBean.getObject().getCurrentSession();
        s.saveOrUpdate(customer);
    }
    @Override
    public List<benhan> getbenhan(int id_patient){
        Session session = sessionFactory.getCurrentSession();
        CriteriaBuilder cb = session.getCriteriaBuilder();
        CriteriaQuery < benhan > cq = cb.createQuery(benhan.class);
        Root < benhan > root = cq.from(benhan.class);
        cq.select(root);
        Query query = session.createQuery(cq);
        return query.getResultList();
    }
    @Override
    public void addbenhan(benhan benhan) {
        benhan.setActive(false);
        Session s = this.localSessionFactoryBean.getObject().getCurrentSession();
        s.save(benhan);
    }
    @Override
    public List<prescriptiondetail> getprescriptiondetail(){
        Session session = sessionFactory.getCurrentSession();
        CriteriaBuilder cb = session.getCriteriaBuilder();
        CriteriaQuery < prescriptiondetail > cq = cb.createQuery(prescriptiondetail.class);
        Root < prescriptiondetail > root = cq.from(prescriptiondetail.class);
        cq.select(root);
        Query query = session.createQuery(cq);
        return query.getResultList();
    }
    
}
