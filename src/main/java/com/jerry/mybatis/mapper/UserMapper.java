package com.jerry.mybatis.mapper;

import com.jerry.mybatis.domain.User;

import java.util.List;

public interface UserMapper {
    List<User> selectAll();
    int insertUser(User user);
    User selectUserById(int id);
    int updateUserById(User user);
    int deleteById(int id);
}
