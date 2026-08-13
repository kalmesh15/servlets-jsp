package com.dominos.pizzaapp;

import com.dominos.pizzaapp.constant.Category;
import com.dominos.pizzaapp.constant.PizzaSize;
import com.dominos.pizzaapp.controller.PizzaController;
import com.dominos.pizzaapp.dto.PizzaDto;

import java.util.List;
import java.util.Scanner;

public class DominoRunner {

    public static void main(String[] args) {
        Scanner scanner= new Scanner(System.in);
        System.out.println("============Welcome to Domino's============");
        PizzaController pizzaController= new PizzaController();
        String yesOrNo=null;
        do {
            System.out.println("Enter 1 to save pizza");
            System.out.println("Enter 2 to get pizza info");
            System.out.println("Enter your option");
            int option=scanner.nextInt();
            switch (option){
                case 1:
                    PizzaDto pizzaDto= new PizzaDto();
                    System.out.println("Enter the pizza id");
                    pizzaDto.setId(scanner.nextInt());
                    System.out.println("Enter pizza name");
                    scanner.nextLine();
                    pizzaDto.setPizzaName(scanner.nextLine());
                    System.out.println("Enter the pizza size(small,medium,large)");
                    pizzaDto.setPizzaSize(PizzaSize.valueOf(scanner.next().toUpperCase()));
                    System.out.println("Enter the pizza price");
                    pizzaDto.setPrice(scanner.nextDouble());
                    System.out.println("Enter pizza category(veg,nonveg)");
                    pizzaDto.setCategory(Category.valueOf(scanner.next().toUpperCase()));

                    pizzaController.savePizza(pizzaDto);
                    break;
                case 2:
                    List<PizzaDto> pizzaDtoList=pizzaController.getPizzaInfo();
                    System.out.println(pizzaDtoList);
                    break;

            }
            System.out.println("Willing to continue (yes or No)");
            scanner.next();
            yesOrNo=scanner.nextLine();
        }while (yesOrNo.equalsIgnoreCase("yes"));

        scanner.close();



    }
}
