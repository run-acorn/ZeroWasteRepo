package com.controller;

import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.CertiDAO;
import com.model.CertiVO;
import com.model.UserDAO;
import com.model.UserVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/WriteService")
public class WriteService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 여기서 인서트 해서 성공하면 board페이지로 가면됨
		HttpSession session = request.getSession();
		request.setCharacterEncoding("UTF-8");
		
		
		String savePath = request.getServletContext().getRealPath("reviewImg");
		
		int maxSize = 5 * 1024 * 1024;
		
		String encoding = "UTF-8";
		
		MultipartRequest multi = null;
		try {
			multi = new MultipartRequest(request, savePath, maxSize, encoding,
					new DefaultFileRenamePolicy());
		} catch (IOException e) {
			
			e.printStackTrace();
		}
		
		String storeName = multi.getParameter("storeName");
		String fileName = multi.getFilesystemName("fileName");
		String review = multi.getParameter("review");
		String title = multi.getParameter("title");
		
		UserVO user = (UserVO)session.getAttribute("login");
		
		CertiVO cvo = new CertiVO();
		cvo.setId(user.getId());
		cvo.setStoreName(storeName);
		cvo.setFileName(fileName);
		cvo.setReview(review);
		cvo.setTitle(title);
		
		CertiDAO dao = new CertiDAO();
		UserDAO udao = new UserDAO();
		int cnt = dao.write(cvo);
		
		if(cnt > 0) {
			udao.pointup(user.getId());
			response.sendRedirect("GoTree");
		} else {
			response.sendRedirect("GoWrite");
		}
	}

}
