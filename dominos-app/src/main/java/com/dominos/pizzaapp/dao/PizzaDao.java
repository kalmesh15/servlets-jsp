package com.dominos.pizzaapp.dao;

import com.dominos.pizzaapp.entity.PizzaEntity;

import java.util.List;

public interface PizzaDao {
    void savePizza(PizzaEntity pizzaEntity);
    List<PizzaEntity> getPizzaInfo();
}
