package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.UserDAO;
import com.model.UserVO;

@WebServlet("/CouponService")
public class CouponService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		request.setCharacterEncoding("UTF-8");
		UserVO user = (UserVO)session.getAttribute("login");
		
		UserDAO dao = new UserDAO();
		int cnt = dao.reset(user.getId());
		
		if (cnt > 0) {
			response.sendRedirect("https://www.instagram.com/oceancloud_life/");
		} else {
			response.sendRedirect("GoCoupon");
		}
	}

}
