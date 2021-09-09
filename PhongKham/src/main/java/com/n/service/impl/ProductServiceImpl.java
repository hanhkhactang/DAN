/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n.service.impl;

import com.n.pojo.Product;
import com.n.repository.ProductRepository;
import com.n.service.ProductService;
import java.math.BigDecimal;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Admin
 */
@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    private ProductRepository productRepository;
    
    @Override
    public List<Product> getProducts(String kw) {
        return this.productRepository.getProducts(kw);
    }

    @Override
    public List<Product> getProducts(BigDecimal fromPrice, BigDecimal toPrice) {
        return this.productRepository.getProducts(fromPrice, toPrice);
    }

    @Override
    public boolean deleteProduct(int productId) {
        return this.productRepository.deleteProduct(productId);
    }

    @Override
    public boolean addOrUpdateProduct(Product product) {
        return this.productRepository.addOrUpdateProduct(product);
    }

    @Override
    public Product getProductById(int productId) {
        return this.productRepository.getProductById(productId);
    }
    
}
