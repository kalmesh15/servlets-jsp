package com.dominos.pizzaapp.entity;

import com.dominos.pizzaapp.constant.Category;
import com.dominos.pizzaapp.constant.PizzaSize;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "pizza_table")
public class PizzaEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "pizza_name")
    private  String pizzaName;

    @Enumerated(EnumType.STRING)
    @Column(name = "pizza_size")
    private PizzaSize pizzaSize;

    private double price;

    @Enumerated(EnumType.STRING)
    private Category category;


}
