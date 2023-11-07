<%--
  Created by IntelliJ IDEA.
  User: phamq
  Date: 11/2/2023
  Time: 3:35 PM
  To change this template use File | Settings | File Templates.
--%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Sinh viên</title>
</head>

<body>
   <p>Danh sách sinh viên: </p>
<%--    <c:forEach varStatus="i" items="${listSinhVien}" var="sinhVien">--%>
<%--           <p>STT: ${i.index}</p>--%>
<%--            <p>Tên: ${sinhVien.ten}</p>--%>
<%--        <p>Địa ch: ${sinhVien.diaChi}</p>--%>
<%--    </c:forEach>--%>
    <table border="1" class="table">
        <thead>
        <tr>
            <td>STT</td>
            <td>Tên</td>
            <td>Địa chỉ</td>
            <td>Giới tính</td>
            <td>Lớp</td>
        </tr>
        </thead>
        <tbody>
        <c:forEach varStatus="i" items="${listSinhVien}" var="sinhVien">
            <tr>
                <td>${i.index + 1}</td>
                <td>${sinhVien.ten}</td>
                <td>${sinhVien.diaChi}</td>
                <td>${sinhVien.gioiTinh}</td>
                <td>${sinhVien.lop}</td>
            </tr>

        </c:forEach>
        </tbody>
    </table>


</body>
</html>
