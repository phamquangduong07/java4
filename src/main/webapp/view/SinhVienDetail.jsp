<%--
  Created by IntelliJ IDEA.
  User: phamq
  Date: 11/9/2023
  Time: 2:29 PM
  To change this template use File | Settings | File Templates.
--%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Detail</title>
</head>
<body>
<div id="" class="container">
    <form method="post" action="/sinh-vien/update?id=${sinhVienDetail.id}">
<%--        <div class="mb-3">--%>
<%--            <label class="form-label">ID</label>--%>
<%--            <input type="text" class="form-control" aria-describedby="" value="${sinhVienDetail.id}">--%>

<%--        </div>--%>
        <div class="mb-3">
            <label class="form-label">Địa chỉ</label>
            <input type="text" class="form-control" value="${sinhVienDetail.diaChi}" name="diaChi">
        </div>
        <div class="mb-3">
            <label class="form-label">Họ tên</label>
            <input type="text" class="form-control" value="${sinhVienDetail.ten}" name = ten>
        </div>
        <div class="mb-3">
            <label class="form-label">Lớp</label>
            <select class="form-select" aria-label="Default select example" name ="lop">
                <c:forEach items="${listClass}" var="i">
                    <option value="${i}" <c:if test="${sinhVienDetail.lop==i}">selected</c:if>
                    >${i}</option>
                </c:forEach>

            </select>
        </div>
        <div class="mb-3 ">
            <label class="form-check-label">Giới tính</label>
            <br/>

            <input type="radio" value="Nam" name="gioiTinh" <c:if test="${sinhVienDetail.gioiTinh == 'Nam'}">checked</c:if>>
            <label>Nam</label>

            <input type="radio" value="Nữ" name="gioiTinh" <c:if test="${sinhVienDetail.gioiTinh == 'Nữ'}">checked</c:if>>
            <label>Nữ</label>


        </div>
        <button type="submit" class="btn btn-primary">Update</button>
    </form>
</div>
</body>
</html>
