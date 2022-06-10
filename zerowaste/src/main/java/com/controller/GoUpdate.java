package com.controller;

import java.io.IOException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.CertiDAO;
import com.model.CertiVO;


@WebServlet("/GoUpdate")
public class GoUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int cernum = Integer.parseInt(request.getParameter("CerNum")) ;
	
		CertiDAO dao = new CertiDAO();
		CertiVO cvo = dao.boardView(cernum);
		
		request.setAttribute("update", cvo);
		
		String nextPage = "update.jsp";
		
		RequestDispatcher rd = request.getRequestDispatcher(nextPage);
		rd.forward(request, response);
		
	}

}
