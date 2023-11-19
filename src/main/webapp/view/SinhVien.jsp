<%--
  Created by IntelliJ IDEA.
  User: phamq
  Date: 11/2/2023
  Time: 3:35 PM
  To change this template use File | Settings | File Templates.
--%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Sinh viên</title>
</head>

<body>
<div id="container">
    <div class="row">
        <div class="col-8  ">
            <form action="/sinh-vien/add" method="post">
                <div class="mb-3">
                    <label class="form-label">ID</label>
                    <input type="text" class="form-control" aria-describedby="" name="id">

                </div>
                <div class="mb-3">
                    <label class="form-label">Địa chỉ</label>
                    <input type="text" class="form-control" name="diaChi">
                </div>
                <div class="mb-3">
                    <label class="form-label">Họ tên</label>
                    <input type="text" class="form-control" name="hoTen">
                </div>
                <div class="mb-3">
                    <label class="form-label">Lớp</label>
                    <select class="form-select" aria-label="Default select example" name="lop">
                        <c:forEach var="item" items="${listClass}">
                            <option value="${item}">${item}</option>
                        </c:forEach>

                    </select>
                </div>
                <div class="mb-3 ">
                    <label class="form-check-label">Giới tính</label>
                    <br/>
                    <input type="radio" name="gioiTinh" value="Nam">
                    <label>Nam</label>

                    <input type="radio" name="gioiTinh" value="Nữ">
                    <label>Nữ</label>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
    </div>
</div>

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
        <td>Action</td>
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
            <td>
                <a href="/sinh-vien/detail?id=${sinhVien.id}" class=" btn btn-primary" >Detail</a>
                <a href="/sinh-vien/delete?vitri=${i.index}" class=" btn btn-warning" >Delete</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>


</body>
</html>
