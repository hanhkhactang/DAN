/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n.service.impl;

import com.n.pojo.Cart;
import com.n.repository.OrderRepository;
import com.n.service.OrderService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Admin
 */
@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OrderRepository orderRepository;

    @Override
    public boolean addOrder(Map<Integer, Cart> cart) {
        return this.orderRepository.addOrder(cart);
    }
    
}
