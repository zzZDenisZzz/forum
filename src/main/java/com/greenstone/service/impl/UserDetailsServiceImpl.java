package com.greenstone.service.impl;

import com.greenstone.dao.UserDao;
import com.greenstone.entity.Role;
import com.greenstone.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashSet;
import java.util.Set;

@Service
@Transactional
public class UserDetailsServiceImpl implements UserDetailsService {

    private UserDao userDao;

    @Autowired
    public UserDetailsServiceImpl(UserDao userDao) {
        this.userDao = userDao;
    }

    @Override
    public UserDetails loadUserByUsername(String username) {
        User user = userDao.findByUsername(username);

        Set<GrantedAuthority> roles = new HashSet<>();

        for (Role role : user.getRoles()) {
            roles.add(new SimpleGrantedAuthority(role.getName()));
        }

        return new org.springframework.security.core.userdetails
                .User(user.getUsername(), user.getPassword(), roles);
    }
}