package com.xworkz.electricapp.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserDto {
    private int id;
    private String fullName;
    private String email;
    private long phone;
    private String password;
    private long consumerNumber;
    private  String connectionType;
    private String address;
}
