<%--
  Created by IntelliJ IDEA.
  User: phamq
  Date: 11/7/2023
  Time: 3:26 PM
  To change this template use File | Settings | File Templates.
--%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Nhân viên</title>
</head>
<body>
    <p>Nhân viên</p>
    <table border="1" class="table">
        <thead class="bg-warning">
        <tr>
            <td>STT</td>
            <td>Tên</td>
            <td>Địa chỉ</td>
            <td>Giới tính</td>
            <td>Tuổi</td>
            <td>Chức vụ</td>
            <td>Lương</td>
        </tr>
        </thead>
        <tbody>
        <c:forEach varStatus="i" items="${listNV}" var="nhanVien">
            <tr>
                <td>${i.index + 1}</td>
                <td>${nhanVien.hoTen}</td>
                <td>${nhanVien.diaChi}</td>
                <td>${nhanVien.gioiTinh}</td>
                <td>${nhanVien.tuoi}</td>
                <td>${nhanVien.chucVu}</td>
                <td>${nhanVien.luong}</td>
            </tr>

        </c:forEach>
        </tbody>
    </table>
</body>
</html>
