package com.xworkz.hospitalsystem.service.impl;

import com.xworkz.hospitalsystem.dao.UserDao;
import com.xworkz.hospitalsystem.dao.impl.UserDaoImpl;
import com.xworkz.hospitalsystem.dto.UserDto;
import com.xworkz.hospitalsystem.entity.UserEntity;
import com.xworkz.hospitalsystem.service.UserService;
import com.xworkz.hospitalsystem.constant.Gender;

public class UserServiceImpl implements UserService {
    @Override
    public void save(UserDto userDto) {
        UserEntity userEntity= new UserEntity();
        UserDao userDao= new UserDaoImpl();
        userEntity.setFullName(userDto.getFullName());
        userEntity.setEmail(userDto.getEmail());
        userEntity.setPhone(userDto.getPhone());
        userEntity.setPassword(userDto.getPassword());
        userEntity.setDateOfBirth(userDto.getDateOfBirth());
        userEntity.setGender(userDto.getGender());
        userEntity.setBloodGroup(userDto.getBloodGroup());
        userEntity.setCity(userDto.getCity());


        userDao.save(userEntity);

    }

    @Override
    public UserDto getUserById(int id) {
        UserDao userDao= new UserDaoImpl();
        UserDto userDto=new UserDto();
        UserEntity userEntity=userDao.getUserById(id);
        if(userEntity!=null){
            userDto.setId(userEntity.getId());
            userDto.setDateOfBirth(userEntity.getDateOfBirth());
            userDto.setFullName(userEntity.getFullName());
            userDto.setEmail(userEntity.getEmail());
            userDto.setPhone(userEntity.getPhone());
            userDto.setPassword(userEntity.getPassword());
            userDto.setGender(userEntity.getGender());
            userDto.setCity(userEntity.getCity());
            userDto.setBloodGroup(userEntity.getBloodGroup());
        }

        return userDto;
    }
}
