package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.UserDAO;
import com.model.UserVO;


@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nick = request.getParameter("nick");

		UserVO uvo = new UserVO();
		uvo.setId(id);
		uvo.setPw(pw);
		uvo.setNickname(nick);

		UserDAO dao = new UserDAO();
		int cnt = dao.join(uvo);
		
		String nextPage = null;
		if (cnt > 0) {
			nextPage = "GoLogin";
			// out.print >> ajax에게 응답
		} else {
			nextPage = "GoJoin";
		}
		response.sendRedirect(nextPage);
	}

}
