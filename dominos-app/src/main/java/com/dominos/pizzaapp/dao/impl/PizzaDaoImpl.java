package com.dominos.pizzaapp.dao.impl;

import com.dominos.pizzaapp.dao.PizzaDao;
import com.dominos.pizzaapp.entity.PizzaEntity;

import java.util.ArrayList;
import java.util.List;

public class PizzaDaoImpl implements PizzaDao {
    List<PizzaEntity> pizzaEntityList= new ArrayList<>();
    @Override
    public void savePizza(PizzaEntity pizzaEntity) {
        pizzaEntityList.add(pizzaEntity);
    }

    @Override
    public List<PizzaEntity> getPizzaInfo() {
        return  pizzaEntityList;
    }
}
