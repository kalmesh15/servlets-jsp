package com.xworkz.electricapp.service.impl;

import com.xworkz.electricapp.dao.UserDao;
import com.xworkz.electricapp.dao.impl.UserDaoImpl;
import com.xworkz.electricapp.dto.UserDto;
import com.xworkz.electricapp.entity.UserEntity;
import com.xworkz.electricapp.service.UserService;

public class UserServiceImpl implements UserService {
    @Override
    public void save(UserDto userDto) {
        UserEntity userEntity= new UserEntity();
        UserDao userDao=new UserDaoImpl();
        userEntity.setEmail(userDto.getEmail());
        userEntity.setFullName(userDto.getFullName());
        userEntity.setAddress(userDto.getAddress());
        userEntity.setPhone(userDto.getPhone());
        userEntity.setPassword(userDto.getPassword());
        userEntity.setConnectionType(userDto.getConnectionType());
        userEntity.setConsumerNumber(userDto.getConsumerNumber());

        userDao.save(userEntity);
    }
}
