package org.xworkz.moviebooking.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AccountDto {
    private int id;
    private String fullName;
    private String email;
    private long phone;
    private String password;
    private String city;
    private String favoriteGenre;
}
