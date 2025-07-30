package com.techleopard.plutusstash.service;

import com.techleopard.plutusstash.model.User;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    public User createUser(User user) {
        return user;
    }

}
