package com.xworkz.electricapp.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "user_table")
public class UserEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    @Column(name = "full_name")
    private String fullName;
    private String email;
    private long phone;
    private String password;
    @Column(name = "consumer_number")
    private long consumerNumber;
    @Column(name = "connection_type")
    private  String connectionType;
    private String address;
}
