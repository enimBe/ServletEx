package com.enimBe.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test01")
public class ServletTest01 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		Integer price = Integer.parseInt(request.getParameter("price"));
		
		PrintWriter out = response.getWriter();
		
		if(address.contains("서울시")) {
			if(card.equals("신한카드")) {
				out.println("결제 불가 카드입니다.");
			} else {
				out.println();
			}
		}else {
			out.print("배달 불가 지역");
		}
		
	}
}
