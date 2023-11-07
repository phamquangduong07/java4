package com.example.demo.servlet;

import com.example.demo.model.SinhVien;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ServletSinhVien", value = "/ServletSinhVien")
public class ServletSinhVien extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        List<SinhVien> listSinhVien = new ArrayList<>();
        listSinhVien.add(new SinhVien("1", "Nguyễn Văn A", "Hà Nội", "Nam", "SD18202"));
        listSinhVien.add(new SinhVien("2", "Nguyễn Văn B", "Hà Nội", "Nữ", "SD18202"));

        request.setAttribute("listSinhVien", listSinhVien);
        request.getRequestDispatcher("/view/SinhVien.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
