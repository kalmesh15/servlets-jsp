package com.xworkz.hospitalsystem.servlets;

import com.xworkz.hospitalsystem.dto.UserDto;
import com.xworkz.hospitalsystem.service.UserService;
import com.xworkz.hospitalsystem.service.impl.UserServiceImpl;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import java.io.IOException;

@WebServlet(urlPatterns = "/getAccount")
public class GetAccountServlet extends GenericServlet {
    @Override
    public void service(ServletRequest servletRequest, ServletResponse servletResponse) throws ServletException, IOException {
        UserService userService= new UserServiceImpl();
        String id=servletRequest.getParameter("id");
        UserDto userDto=userService.getUserById(Integer.parseInt(id));
        System.out.println(userDto);

        servletRequest.setAttribute("dto",userDto);
        RequestDispatcher requestDispatcher= servletRequest.getRequestDispatcher("getYourAccount.jsp");
        requestDispatcher.forward(servletRequest,servletResponse);



    }
}
