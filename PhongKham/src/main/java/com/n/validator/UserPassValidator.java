/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n.validator;

import com.n.pojo.UserAccount;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

/**
 *
 * @author Admin
 */
@Component
public class UserPassValidator implements Validator {

    @Override
    public boolean supports(Class<?> type) {
        return UserAccount.class.isAssignableFrom(UserAccount.class);
    }

    @Override
    public void validate(Object target, Errors errors) {
        UserAccount user = (UserAccount) target;
        if (!user.getPassword().equals(user.getConfirmPassword()))
            errors.rejectValue("password", "user.password.notmatch");
    }
    
}
