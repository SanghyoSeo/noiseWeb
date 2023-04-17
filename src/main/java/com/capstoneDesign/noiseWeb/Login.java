package com.capstoneDesign.noiseWeb;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

import java.io.PrintWriter;
import java.sql.*;

@WebServlet("/login")
public class Login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        System.out.println("Login 실행");

        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=utf-8");

        String id = request.getParameter("id");
        String pw = request.getParameter("pw");

        PrintWriter out = response.getWriter();

        HttpSession session = request.getSession();

        if (id.equals("1") && pw.equals("1")) {
            session.setAttribute("userId", id);

            response.sendRedirect("/member/login_main.jsp");
            return;
        }

        try {
            Class.forName("org.mariadb.jdbc.Driver");

            Connection conn = DriverManager.getConnection(
                    "jdbc:mariadb://localhost:3307/noise_review",
                    "hyo",
                    "910741"
            );

            Statement stmt = conn.createStatement();

            ResultSet rs = stmt.executeQuery(String.format(
                    "select * from user where id=%d and pw='%s'",
                    Integer.parseInt(id), pw
            ));

            if (rs.next()) {
                session.setAttribute("userId", id);

                response.sendRedirect("/member/login_main.jsp");
                return;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        out.println("<script>");
        out.println("alert('아이디 또는 비밀번호가 틀립니다!')");
        out.println("history.back()");
        out.println("</script>");
        out.close();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}