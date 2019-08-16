package com.jerry.mybatis.service;

import com.jerry.mybatis.domain.User;

import java.util.List;

public interface IUserService {
    public int insert(User user);
    public int delete(int id);
    public List<User> selectAll();
    public User select(int id);
    public int update(User user);
}
