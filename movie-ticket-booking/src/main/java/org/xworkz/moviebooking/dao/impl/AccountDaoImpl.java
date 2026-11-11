package org.xworkz.moviebooking.dao.impl;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import org.xworkz.moviebooking.dao.AccountDao;
import org.xworkz.moviebooking.entity.AccountEntity;

public class AccountDaoImpl implements AccountDao {
    @Override
    public void save(AccountEntity accountEntity) {
        EntityManagerFactory entityManagerFactory= Persistence.createEntityManagerFactory("com.xworkz");
        EntityManager entityManager= entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        entityManager.persist(accountEntity);
        entityManager.getTransaction().commit();
        entityManager.close();
        entityManagerFactory.close();

    }
}
