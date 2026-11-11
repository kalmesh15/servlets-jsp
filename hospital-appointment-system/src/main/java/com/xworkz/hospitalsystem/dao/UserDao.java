package com.xworkz.hospitalsystem.dao;

import com.xworkz.hospitalsystem.entity.UserEntity;

public interface UserDao {
    void  save(UserEntity entity);
    UserEntity getUserById(int id);
}
