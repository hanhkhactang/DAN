/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n.repository.impl;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.n.pojo.UserAccount;
import com.n.repository.UserRepository;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Admin
 */
@Repository
@Transactional
public class UserRepositoryImpl implements  UserRepository {
    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    
    
    
    
  

    @Override
    public boolean addUser(UserAccount user) {
        
        
        
        
     
        Session s = this.sessionFactory.getObject().getCurrentSession();
        s.save(user);
        return true;
        
    }

    @Override
    public List<UserAccount> getUsers(String username) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<UserAccount> query = builder.createQuery(UserAccount.class);
        Root root = query.from(UserAccount.class);
        query.select(root);
        
        Predicate p = builder.equal(root.get("username").as(String.class), username.trim());
        query = query.where(p);
        
        Query q = session.createQuery(query);
        return q.getResultList();
    }

    @Override
    public void editUser(UserAccount user) {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        s.update(user);
    }
    
}
