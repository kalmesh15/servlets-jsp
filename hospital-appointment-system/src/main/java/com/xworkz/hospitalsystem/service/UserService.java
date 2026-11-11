package com.xworkz.hospitalsystem.service;

import com.xworkz.hospitalsystem.dto.UserDto;

public interface UserService {
    void save(UserDto userDto);
    UserDto getUserById(int id);

}
