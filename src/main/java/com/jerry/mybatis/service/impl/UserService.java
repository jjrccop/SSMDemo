package com.jerry.mybatis.service.impl;

import com.jerry.mybatis.domain.User;
import com.jerry.mybatis.mapper.UserMapper;
import com.jerry.mybatis.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService implements IUserService {
    @Autowired
    private UserMapper userMapper;
    @Override
    public int insert(User user){
        return userMapper.insertUser(user);
    }
    public List<User> selectAll(){
        return userMapper.selectAll();
    }
    public User select(int id){
        return userMapper.selectUserById(id);
    }
    public int delete(int id){
        return userMapper.deleteById(id);
    }
    public int update(User user){
        return userMapper.updateUserById(user);
    }
}
