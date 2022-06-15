package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.StoreDAO;
import com.model.StoreVO;

@WebServlet("/RegiService")
public class RegiService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String storeName = request.getParameter("storeName");
		String address = request.getParameter("address");
		String food = request.getParameter("food");
		String url = request.getParameter("url");
		String lat = request.getParameter("lat");
		String lng = request.getParameter("lng");
		
		StoreVO svo = new StoreVO();
		svo.setStoreName(storeName);
		svo.setStoreAddress(address);
		svo.setFoodType(food);
		svo.setLatutude(lat);
		svo.setLongitude(lng);
		svo.setUrl(url);
		
		StoreDAO dao = new StoreDAO();
		int cnt = dao.insertStore(svo);
		
		if (cnt > 0) {
			PrintWriter out = response.getWriter();
            out.print(cnt);
		}
	}

}
