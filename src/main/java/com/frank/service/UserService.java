package com.frank.service;

import com.frank.dao.UserDao;
import com.frank.entity.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by liyan on 2016/2/27.
 */
@Service
public class UserService {
    @Resource
    private UserDao userDao;
    public List<User> findUser(String userName){
        return userDao.queryPermissions(userName);
    }
    public User findLogin(String userName){
        return userDao.queryToLogin(userName);
    }
}
