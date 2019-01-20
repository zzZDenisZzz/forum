package com.greenstone.service;

import com.greenstone.entity.User;

public interface UserService {

    void save(User user);

    User findByUsername(String username);
}