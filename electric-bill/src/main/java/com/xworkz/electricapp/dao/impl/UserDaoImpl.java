package com.xworkz.electricapp.dao.impl;

import com.xworkz.electricapp.dao.UserDao;
import com.xworkz.electricapp.entity.UserEntity;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class UserDaoImpl implements UserDao {
    @Override
    public void save(UserEntity entity) {
        EntityManagerFactory entityManagerFactory= Persistence.createEntityManagerFactory("com.xworkz");
        EntityManager entityManager= entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        entityManager.persist(entity);
        entityManager.getTransaction().commit();
        entityManager.close();
        entityManagerFactory.close();
    }
}
