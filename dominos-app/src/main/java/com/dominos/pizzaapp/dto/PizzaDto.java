package com.dominos.pizzaapp.dto;

import com.dominos.pizzaapp.constant.Category;
import com.dominos.pizzaapp.constant.PizzaSize;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
@AllArgsConstructor
public class PizzaDto {

    private  int id;
    private  String pizzaName;
    private PizzaSize pizzaSize;
    private double price;
    private Category category;

}
