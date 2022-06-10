package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.UserDAO;
import com.model.UserVO;

@WebServlet("/GoTree")
public class GoTree extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		request.setCharacterEncoding("UTF-8");
		// session에서 가져오기
		UserVO user = (UserVO)session.getAttribute("login");
		
		UserDAO dao = new UserDAO();
		UserVO uvo = dao.treegrow(user.getId());
		
		System.out.println(uvo.getTreeGrade());
		request.setAttribute("grade", uvo);
		
		request.setCharacterEncoding("UTF-8");
		String nextPage = "tree.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(nextPage);
		rd.forward(request, response);
	}

}
