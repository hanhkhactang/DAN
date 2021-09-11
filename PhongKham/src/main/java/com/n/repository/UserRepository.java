/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n.repository;

import com.n.pojo.UserAccount;
import java.util.List;

/**
 *
 * @author Admin
 */
public interface UserRepository {
    boolean addUser(UserAccount user);
    List<UserAccount> getUsers(String username);
}
