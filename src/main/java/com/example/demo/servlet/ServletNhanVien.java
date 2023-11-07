package com.example.demo.servlet;

import com.example.demo.model.NhanVien;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ServletNhanVien", value = "/NhanVien")
public class ServletNhanVien extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<NhanVien> listNV = new ArrayList<>();
        listNV.add(new NhanVien("1","Nhân viên 1","Hà Nội",20,"Trưởng phòng","Nam",10000));
        listNV.add(new NhanVien("2","Nhân viên 2","Hà Nội",20,"Trưởng phòng","Nữ",10000));
    request.setAttribute("listNV",listNV);
        request.getRequestDispatcher("/view/NhanVien.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
