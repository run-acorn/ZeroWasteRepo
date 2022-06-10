package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.CertiDAO;
import com.model.CertiVO;
import com.model.UserDAO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/WriteService")
public class WriteService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 여기서 인서트 해서 성공하면 board페이지로 가면됨
		
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
		
		
		String id = multi.getParameter("id");
		String storeName = multi.getParameter("storeName");
		String review = multi.getParameter("review");
		String fileName = multi.getFilesystemName("fileName");
		
		CertiVO cvo = new CertiVO();
		cvo.setId(id);
		cvo.setStoreName(storeName);
		cvo.setReview(review);
		cvo.setFileName(fileName);
		
		CertiDAO dao = new CertiDAO();
		int cnt = dao.write(cvo);
		
		
		if(cnt>0) {
			response.sendRedirect("GoBoard");
		} else {
			response.sendRedirect("GoWrite");
		}
		
	}

}
