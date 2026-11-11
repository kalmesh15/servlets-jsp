package com.xworkz.hospitalsystem.dao.impl;

import com.xworkz.hospitalsystem.dao.UserDao;
import com.xworkz.hospitalsystem.entity.UserEntity;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class UserDaoImpl implements UserDao {
    @Override
    public void save(UserEntity entity) {
        EntityManagerFactory entityManagerFactory= Persistence.createEntityManagerFactory("com.xworkz");
        EntityManager entityManager=entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        entityManager.persist(entity);
        entityManager.getTransaction().commit();
        entityManager.close();
        entityManagerFactory.close();

    }

    @Override
    public UserEntity getUserById(int id) {
        UserEntity userEntity= new UserEntity();
        EntityManagerFactory entityManagerFactory= Persistence.createEntityManagerFactory("com.xworkz");
        EntityManager entityManager=entityManagerFactory.createEntityManager();
        userEntity=entityManager.find(UserEntity.class,id);
        entityManager.close();
        entityManagerFactory.close();
        return  userEntity;
    }
}
