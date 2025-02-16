<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content="Dự án laptopshop"/>
    <meta name="author" content=""/>
    <title>Cập nhật thông tin sản phẩm</title>
    <link href="/css/styles.css" rel="stylesheet"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script>
        $(document).ready(() => {
            const productImage = $("#product-image");
            productImage.change(function (e) {
                const imgURL = URL.createObjectURL(e.target.files[0]);
                $("#image-preview").attr("src", imgURL);
            });
        });
    </script>
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
</head>

<body class="sb-nav-fixed">
<jsp:include page="../layout/header.jsp"/>
<div id="layoutSidenav">
    <jsp:include page="../layout/sidebar.jsp"/>
    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid px-4">
                <h1 class="mt-4">Quản lý sản phẩm</h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="/admin">Dashboard</a></li>
                    <li class="breadcrumb-item"><a href="/admin/order">Quản lí đơn hàng</a></li>
                    <li class="breadcrumb-item active">Cập nhật</li>
                </ol>
                <div class=" mt-5">
                    <div class="row">
                        <h3>Cập nhật trạng thái đơn hàng ID = ${order.id}</h3>
                        <form:form method="post" action="/admin/order/update" modelAttribute="order">
                            <label class="form-label">Trạng thái</label>
                            <form:select cssClass="form-select" path="status">
                                <form:option value="PENDING">Đang chờ</form:option>
                                <form:option value="DELIVERING">Đang giao hàng</form:option>
                                <form:option value="CANCELED">Đã hủy</form:option>
                                <form:option value="COMPLETED">Thành công</form:option>
                            </form:select>
                            <!-- for developer section -->
                            <form:input value="${order.id}" path="id" hidden="true"/>
                            <button class="mt-3 btn btn-primary">Cập nhật</button>
                        </form:form>
                    </div>
                </div>
            </div>
        </main>
        <jsp:include page="../layout/footer.jsp"/>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>
<script src="/js/scripts.js"></script>
</body>

</html>