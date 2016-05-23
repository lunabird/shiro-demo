package com.frank.dao;

import com.frank.entity.User;

import java.util.List;

/**
 * Created by liyan on 2016/2/27.
 */
public interface UserDao {
    public List<User> queryPermissions(String userName);
    public User queryToLogin(String userName);
}
