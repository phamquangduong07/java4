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

@WebServlet(name = "ServletSinhVien", value = {
        "/hien-thi/sinh-vien",
        "/sinh-vien/detail",
        "/sinh-vien/add",
        "/sinh-vien/delete",
        "/sinh-vien/update"
})
public class ServletSinhVien extends HttpServlet {
    List<SinhVien> listSinhVien = new ArrayList<>();
    List<String> listClass = new ArrayList<>();

    public ServletSinhVien() {
        listSinhVien.add(new SinhVien("1", "Nguyễn Văn A", "Hà Nội", "Nam", "SD18202"));
        listSinhVien.add(new SinhVien("2", "Nguyễn Văn B", "Hà Nội", "Nữ", "SD18204"));
        listClass.add("SD18202");
        listClass.add("SD18203");
        listClass.add("SD18204");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("listClass", listClass);
        String uri = request.getRequestURI();
//        System.out.println(uri);
        if (uri.contains("/hien-thi")) {
            request.setAttribute("listSinhVien", listSinhVien);

            request.getRequestDispatcher("/view/SinhVien.jsp").forward(request, response);
        } else if (uri.contains("/detail")) {
            String id = request.getParameter("id");
            SinhVien sinhVienDetail = new SinhVien();
            for (SinhVien sv : listSinhVien) {
                if (sv.getId().equals(id)) {
                    sinhVienDetail = sv;
                    break;
                }
            }
            request.setAttribute("sinhVienDetail", sinhVienDetail);
            request.getRequestDispatcher("/view/SinhVienDetail.jsp").forward(request, response);
        } else if (uri.contains("/delete")) {

            int viTri = Integer.parseInt(request.getParameter("vitri"));
            listSinhVien.remove(viTri);
            response.sendRedirect("/hien-thi/sinh-vien");

        }



    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uri = request.getRequestURI();
        if (uri.contains("/add")) {
            String id = request.getParameter("id");
            String hoTen = request.getParameter("hoTen");
            String diaChi = request.getParameter("diaChi");
            String lop = request.getParameter("lop");
            String gioiTinh = request.getParameter("gioiTinh");
            SinhVien sinhVien = new SinhVien(id, hoTen, diaChi, gioiTinh, lop);
            listSinhVien.add(sinhVien);
            response.sendRedirect("/hien-thi/sinh-vien");
        }else if(uri.contains("/update")){
            String id = request.getParameter("id");

            String hoTen = request.getParameter("ten");
            String diaChi = request.getParameter("diaChi");
            String lop = request.getParameter("lop");
            String gioiTinh = request.getParameter("gioiTinh");

            for(SinhVien sv : listSinhVien){
                if(sv.getId().equals(id)){
                    sv.setLop(lop);
                    sv.setTen(hoTen);
                    sv.setDiaChi(diaChi);
                    sv.setGioiTinh(gioiTinh);

                }
            }
            response.sendRedirect("/hien-thi/sinh-vien");
        }
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
