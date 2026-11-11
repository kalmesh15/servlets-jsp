package org.xworkz.moviebooking.servlets;

import org.xworkz.moviebooking.dto.AccountDto;
import org.xworkz.moviebooking.service.AccountService;
import org.xworkz.moviebooking.service.impl.AccountServiceImpl;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import java.io.IOException;

@WebServlet(urlPatterns = "/register")
public class CreateAccountServlet extends GenericServlet {
    @Override
    public void service(ServletRequest servletRequest, ServletResponse servletResponse) throws ServletException, IOException {
        AccountDto accountDto= new AccountDto();
        AccountService accountService= new AccountServiceImpl();
        accountDto.setId(1);
        accountDto.setFullName(servletRequest.getParameter("fullName"));
        accountDto.setEmail(servletRequest.getParameter("email"));
        accountDto.setPassword(servletRequest.getParameter("password"));
        accountDto.setPhone(Long.parseLong(servletRequest.getParameter("phone")));
        accountDto.setCity(servletRequest.getParameter("city"));
        accountDto.setFavoriteGenre(servletRequest.getParameter("favoriteGenre"));
        System.out.println(accountDto);
        accountService.save(accountDto);

        servletResponse.getWriter().println("Thank you for register");
    }
}
