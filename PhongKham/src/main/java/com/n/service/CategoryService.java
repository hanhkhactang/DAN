/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n.service;

import com.n.pojo.Category;
import java.util.List;

/**
 *
 * @author Admin
 */
public interface CategoryService {
    List<Category> getCategories();
    Category getCateById(int id);
}