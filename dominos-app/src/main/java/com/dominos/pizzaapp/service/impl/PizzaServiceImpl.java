package com.dominos.pizzaapp.service.impl;

import com.dominos.pizzaapp.dao.PizzaDao;
import com.dominos.pizzaapp.dao.impl.PizzaDaoImpl;
import com.dominos.pizzaapp.dto.PizzaDto;
import com.dominos.pizzaapp.entity.PizzaEntity;
import com.dominos.pizzaapp.service.PizzaService;

import java.util.ArrayList;
import java.util.List;

public class PizzaServiceImpl implements PizzaService {
    PizzaDao pizzaDao= new PizzaDaoImpl();


    @Override
    public void savePizza(PizzaDto pizzaDto) {
        PizzaEntity pizzaEntity = new PizzaEntity();

        pizzaEntity.setPizzaName(pizzaDto.getPizzaName());
        pizzaEntity.setPizzaSize(pizzaDto.getPizzaSize());
        pizzaEntity.setCategory(pizzaDto.getCategory());
        pizzaEntity.setPrice(pizzaDto.getPrice());

        pizzaDao.savePizza(pizzaEntity);


    }

    @Override
    public List<PizzaDto> getPizzaInfo() {
        List<PizzaEntity> pizzaInfo = pizzaDao.getPizzaInfo();
        List<PizzaDto> pizzaDtoList= new ArrayList<>();

        pizzaInfo.forEach(pizzaEntity ->{
                    PizzaDto pizzaDto=new PizzaDto();
                    pizzaDto.setId(pizzaEntity.getId());
                    pizzaDto.setPizzaName(pizzaEntity.getPizzaName());
                    pizzaDto.setPizzaSize(pizzaEntity.getPizzaSize());
                    pizzaDto.setCategory(pizzaEntity.getCategory());
                    pizzaDto.setPrice(pizzaEntity.getPrice());
                    pizzaDtoList.add(pizzaDto);
                }
                );
        return  pizzaDtoList;

    }
}
