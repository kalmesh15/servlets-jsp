package com.dominos.pizzaapp.service;

import com.dominos.pizzaapp.dto.PizzaDto;

import java.util.List;

public interface PizzaService {
    void savePizza(PizzaDto pizzaDto);
    List<PizzaDto> getPizzaInfo();
}
