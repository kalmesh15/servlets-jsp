package com.dominos.pizzaapp.controller;

import com.dominos.pizzaapp.dto.PizzaDto;
import com.dominos.pizzaapp.service.PizzaService;
import com.dominos.pizzaapp.service.impl.PizzaServiceImpl;

import java.util.List;

public class PizzaController {
    PizzaService pizzaService= new PizzaServiceImpl();
    public void savePizza(PizzaDto pizzaDto){
        pizzaService.savePizza(pizzaDto);
    }
    public List<PizzaDto> getPizzaInfo(){
        return pizzaService.getPizzaInfo();
    }
}
