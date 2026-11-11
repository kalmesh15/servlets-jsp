package org.xworkz.moviebooking.service.impl;

import org.xworkz.moviebooking.dao.AccountDao;
import org.xworkz.moviebooking.dao.impl.AccountDaoImpl;
import org.xworkz.moviebooking.dto.AccountDto;
import org.xworkz.moviebooking.entity.AccountEntity;
import org.xworkz.moviebooking.service.AccountService;

public class AccountServiceImpl implements AccountService {
    @Override
    public void save(AccountDto accountDto) {
        AccountEntity accountEntity= new AccountEntity();
        AccountDao accountDao= new AccountDaoImpl();
        accountEntity.setFullName(accountDto.getFullName());
        accountEntity.setEmail(accountDto.getEmail());
        accountEntity.setPassword(accountDto.getPassword());
        accountEntity.setPhone(accountDto.getPhone());
        accountEntity.setCity(accountDto.getCity());
        accountEntity.setFavoriteGenre(accountDto.getFavoriteGenre());

        accountDao.save(accountEntity);

    }
}
