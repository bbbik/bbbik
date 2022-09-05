package ch01;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ch01/get/add") //context path 후 값을 넣는다.
public class C1_Get extends HttpServlet { // 자바언어로 웹앱을 만들고싶어서 servlet을 사용한다.
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) //request의 타입이 get일때 doget이 call된다. get은 읽기, post는 쓰기
		throws ServletException, IOException {
		int num1 = 1;
		int num2 = 2;
		
		res.setContentType("text/html; charset=utf-8");
		PrintWriter out = res.getWriter();
		out.println("<h2>GET</h2>");
		out.printf("<p>%d + %d = %d</p>", num1 ,num2, num1 + num2);
	}
		
}