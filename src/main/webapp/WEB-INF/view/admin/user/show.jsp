<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content="Dự án laptopshop"/>
    <meta name="author" content=""/>
    <title>Dashboard</title>
    <link href="/css/styles.css" rel="stylesheet"/>
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
</head>

<body class="sb-nav-fixed">
<jsp:include page="../layout/header.jsp"/>
<div id="layoutSidenav">
    <jsp:include page="../layout/sidebar.jsp"/>
    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid px-4">
                <h1 class="mt-4">Quản lý người dùng</h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="/admin">Dashboard</a></li>
                    <li class="breadcrumb-item active">Danh sách người dùng</li>
                </ol>
                <div class="mt-5">
                    <div class="row">
                        <div class="col-12 mx-auto">
                            <div class="d-flex justify-content-between">
                                <h3>Danh sách người dùng</h3>
                                <a href="/admin/user/create" class="btn btn-primary">Thêm mới</a>
                            </div>

                            <hr/>
                            <table class=" table table-bordered table-hover">
                                <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Email</th>
                                    <th>Họ và tên</th>
                                    <th>Vai trò</th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="user" items="${users}">

                                    <tr>
                                        <th>${user.id}</th>
                                        <td>${user.email}</td>
                                        <td>${user.fullName}</td>
                                        <td>${user.role.name}</td>
                                        <td>
                                            <a href="/admin/user/${user.id}" class="btn btn-success">Chi
                                                tiết</a>
                                            <a href="/admin/user/update/${user.id}"
                                               class="btn btn-warning  mx-2">Cập nhật</a>
                                            <a href="/admin/user/delete/${user.id}"
                                               class="btn btn-danger">Xóa</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>

                            <nav>
                                <ul class="pagination justify-content-center">
                                    <li class="page-item ${currentPage == 1 ? 'disabled' : ''}">
                                        <a class="page-link" href="/admin/user?page=${currentPage-1}"
                                           aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                        </a>
                                    </li>
                                    <c:forEach begin="1" end="${totalPages}" varStatus="loop">
                                        <li class="page-item">
                                            <a class="page-link ${currentPage == loop.index ? 'active' : ''}"
                                               href="/admin/user?page=${loop.index}">${loop.index}
                                            </a>
                                        </li>
                                    </c:forEach>

                                    <a class="page-link ${currentPage == totalPages ? 'disabled' : ''}"
                                       href="/admin/user?page=${currentPage+1}" aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
                                    </a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
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