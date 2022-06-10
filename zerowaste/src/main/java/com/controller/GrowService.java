package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.UserDAO;
import com.model.UserVO;

@WebServlet("/GrowService")
public class GrowService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		UserDAO dao = new UserDAO();
		List<UserVO> uvo = dao.treegrow();
		System.out.println(uvo.get(1).getNickname());
		System.out.println(uvo.get(1).getTreeGrade());
	}

}
