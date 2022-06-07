package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.UserDAO;
import com.model.UserVO;

@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("loginid");
		String pw = request.getParameter("loginpw");
		
		UserVO uvo = new UserVO();
		uvo.setId(id);
		uvo.setPw(pw);
		
		UserDAO dao = new UserDAO();
		UserVO login = dao.login(uvo);
		
		request.setAttribute("sorf", login);
		
		if (login != null) {
			response.sendRedirect("GoMain");
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		}
	}

}
