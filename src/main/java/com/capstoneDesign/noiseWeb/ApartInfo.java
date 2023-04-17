package com.capstoneDesign.noiseWeb;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;

@WebServlet("/apartInfo")
public class ApartInfo extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        System.out.println("ApartInfo 실행");

        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html");

        String tmp = request.getParameter("dong");
        int dong = (tmp != null) ? Integer.parseInt(tmp) : 101;
        System.out.println("입력받은 동: " + dong);

        ArrayList<Integer> aptInfo = new ArrayList<>();

        try {
            Class.forName("org.mariadb.jdbc.Driver");

            Connection conn = DriverManager.getConnection(
                    "jdbc:mariadb://localhost:3307/noise_review",
                    "hyo",
                    "910741"
            );

            Statement stmt = conn.createStatement();

            ResultSet rs = stmt.executeQuery(String.format(
                    "select * from apart where dong=%d",
                    dong
            ));

            if (rs.next()) {
                aptInfo.add(rs.getInt("dong"));
                aptInfo.add(rs.getInt("floor"));
                aptInfo.add(rs.getInt("ho"));
            }

            rs = stmt.executeQuery("select count(*) from apart");

            if (rs.next()) {
                aptInfo.add(rs.getInt("count(*)"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        System.out.println("DB에서 가져온 값: " + aptInfo);

        request.setAttribute("aptInfo", aptInfo);
        RequestDispatcher dispatch = request.getRequestDispatcher("/review/review_list.jsp");
        dispatch.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}