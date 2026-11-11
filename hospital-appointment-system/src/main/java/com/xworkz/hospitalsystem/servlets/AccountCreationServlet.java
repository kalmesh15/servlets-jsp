package com.xworkz.hospitalsystem.servlets;

import com.xworkz.hospitalsystem.constant.Gender;
import com.xworkz.hospitalsystem.dto.UserDto;
import com.xworkz.hospitalsystem.service.UserService;
import com.xworkz.hospitalsystem.service.impl.UserServiceImpl;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import java.io.IOException;
import java.time.LocalDate;

@WebServlet(urlPatterns = "/register")
public class AccountCreationServlet extends GenericServlet {
    @Override
    public void service(ServletRequest servletRequest, ServletResponse servletResponse) throws ServletException, IOException {
        UserDto userDto= new UserDto();
        UserService userService= new UserServiceImpl();
        userDto.setFullName(servletRequest.getParameter("fullName"));
        userDto.setEmail(servletRequest.getParameter("email"));
        userDto.setPhone(Long.parseLong(servletRequest.getParameter("phone")));
        userDto.setPassword(servletRequest.getParameter("password"));
        userDto.setDateOfBirth(LocalDate.parse(servletRequest.getParameter("dateOfBirth")));
        userDto.setGender(Gender.valueOf(servletRequest.getParameter("gender")));
        userDto.setBloodGroup(servletRequest.getParameter("bloodGroup"));
        userDto.setCity(servletRequest.getParameter("city"));
        System.out.println(userDto);
        userService.save(userDto);


        servletResponse.getWriter().println("successfully registered");
    }
}
