package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.CertiDAO;
import com.model.CertiVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/UpdateService")
public class UpdateService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		String savePath = request.getServletContext().getRealPath("reviewImg");

		int maxSize = 5 * 1024 * 1024;

		String encoding = "UTF-8";

		MultipartRequest multi = null;
		try {
			multi = new MultipartRequest(request, savePath, maxSize, encoding, new DefaultFileRenamePolicy());
		} catch (IOException e) {

			e.printStackTrace();
		}

		int cerNum = Integer.parseInt(multi.getParameter("CerNum"));
		String storeName = multi.getParameter("storeName");
		String review = multi.getParameter("review");
		String fileName = multi.getFilesystemName("fileName");

		CertiVO cvo = new CertiVO();
		cvo.setCerNum(cerNum);
		cvo.setStoreName(storeName);
		cvo.setReview(review);
		cvo.setFileName(fileName);

		CertiDAO dao = new CertiDAO();
		int cnt = dao.UpdateService(cvo);

		if (cnt > 0) {
			response.sendRedirect("GoBoard");
		} else {
			response.sendRedirect("GoWrite");
		}

	}

}
