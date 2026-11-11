package com.xworkz.electricapp.servlets;

import com.xworkz.electricapp.dto.UserDto;
import com.xworkz.electricapp.service.UserService;
import com.xworkz.electricapp.service.impl.UserServiceImpl;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import java.io.IOException;

@WebServlet(urlPatterns = "/register")
public class AccountCreationServlet  extends GenericServlet {
    @Override
    public void service(ServletRequest servletRequest, ServletResponse servletResponse) throws ServletException, IOException {
        UserDto userDto=new UserDto();
        UserService userService= new UserServiceImpl();
        userDto.setId(1);
        userDto.setFullName(servletRequest.getParameter("fullName"));
        userDto.setEmail(servletRequest.getParameter("email"));
        userDto.setPassword(servletRequest.getParameter("password"));
        userDto.setPhone(Long.parseLong(servletRequest.getParameter("phone")));
        userDto.setConsumerNumber(Long.parseLong(servletRequest.getParameter("consumerNumber")));
        userDto.setConnectionType(servletRequest.getParameter("connectionType"));
        userDto.setAddress(servletRequest.getParameter("address"));

        System.out.println(userDto);
        userService.save(userDto);


        servletResponse.getWriter().println("Account Created Successfully");
    }
}
