/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n.repository.impl;

import com.n.pojo.Medicine;
import com.n.pojo.UserAccount;
import com.n.repository.MedicineRepository;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Repository;

/**
 *
 * @author Neet Nguyen
 */
@Repository
public class MedicineRepositoryImpl implements MedicineRepository{
    
    @Autowired
    private SessionFactory sessionFactory;
    

    @Override
    public List<Medicine> getMedicine() {
        Session session = sessionFactory.getCurrentSession();
        CriteriaBuilder cb = session.getCriteriaBuilder();
        CriteriaQuery < Medicine > cq = cb.createQuery(Medicine.class);
        Root < Medicine > root = cq.from(Medicine.class);
        cq.select(root);
        Query query = session.createQuery(cq);
        return query.getResultList();
    }

    @Override
    public void saveMedicine(Medicine medicine) {
        Session s = sessionFactory.getCurrentSession();
        s.saveOrUpdate(medicine);
    }

    @Override
    public Medicine getMedicine(int id) {
        Session currentSession = sessionFactory.getCurrentSession();
        Medicine medicine = currentSession.get(Medicine.class, id);
        return medicine;
        
    }

    @Override
    public void deleteMedicine(int id) {
        Session session = sessionFactory.getCurrentSession();
        Medicine book = session.byId(Medicine.class).load(id);
        session.delete(book);
    }
    
}
