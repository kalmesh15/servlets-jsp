package com.xworkz.hospitalsystem.dto;

import com.xworkz.hospitalsystem.constant.Gender;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserDto {
    private int id ;
    private String fullName;
    private String email;
    private long phone;
    private String password;
    private LocalDate dateOfBirth;
    private Gender gender;
    private String bloodGroup;
    private String city;
}
