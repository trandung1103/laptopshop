<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Laptopshop</title>

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
            href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap"
            rel="stylesheet">
    <!-- Icon Font Stylesheet -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
          rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="/client/lib/lightbox/css/lightbox.min.css" rel="stylesheet">
    <link href="/client/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">


    <!-- Customized Bootstrap Stylesheet -->
    <link href="/client/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="/client/css/style.css" rel="stylesheet">
    <meta name="_csrf" content="${_csrf.token}"/>
    <!-- default header name is X-CSRF-TOKEN -->
    <meta name="_csrf_header" content="${_csrf.headerName}"/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery-toast-plugin/1.3.2/jquery.toast.min.css"
          rel="stylesheet">
</head>

<body>

<!-- Spinner Start -->
<div id="spinner"
     class="show w-100 vh-100 bg-white position-fixed translate-middle top-50 start-50  d-flex align-items-center justify-content-center">
    <div class="spinner-grow text-primary" role="status"></div>
</div>
<!-- Spinner End -->

<!-- Navbar start -->
<jsp:include page="../layout/header.jsp"/>
<!-- Navbar end -->

<jsp:include page="../layout/banner.jsp"/>


<!-- Features Section Start -->
<jsp:include page="../layout/feature.jsp"/>
<!-- Featurs Section End -->

<!-- Fruits Shop Start-->
<div class="container-fluid fruite py-5">
    <div class="container py-5">
        <div class="tab-class text-center">
            <div class="row g-4">
                <div class="col-lg-4 text-start">
                    <h1>Sản phẩm nổi bật</h1>
                </div>
                <div class="col-lg-8 text-end">
                    <ul class="nav nav-pills d-inline-flex text-center mb-5">
                        <li class="nav-item">
                            <a class="d-flex m-2 py-2 bg-light rounded-pill active"
                               data-bs-toggle="pill" href="#tab-1">
                                <span class="text-dark" style="width: 130px;">Văn phòng</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="d-flex py-2 m-2 bg-light rounded-pill" data-bs-toggle="pill"
                               href="#tab-2">
                                <span class="text-dark" style="width: 130px;">Doanh nhân</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="d-flex m-2 py-2 bg-light rounded-pill" data-bs-toggle="pill"
                               href="#tab-3">
                                <span class="text-dark" style="width: 130px;">Mỏng nhẹ</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="d-flex m-2 py-2 bg-light rounded-pill" data-bs-toggle="pill"
                               href="#tab-4">
                                <span class="text-dark" style="width: 130px;">Gaming</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="tab-content">
                <div id="tab-1" class="tab-pane fade show p-0 active">
                    <div class="row g-4">
                        <div class="col-lg-12">
                            <div class="row g-4">
                                <c:forEach items="${office}" var="p">
                                    <div class="col-md-6 col-lg-4 col-xl-3">
                                        <div
                                                class="border border-primary rounded position-relative vesitable-item">
                                            <div class="vesitable-img">
                                                <img src="images/product/${p.image}"
                                                     class="img-fluid w-100 rounded-top" alt="">
                                            </div>
                                            <div class="text-white bg-primary px-3 py-1 rounded position-absolute"
                                                 style="top: 10px; right: 10px;">${p.purpose}
                                            </div>
                                            <div class="p-4 rounded-bottom">
                                                <h5><a href="/product/${p.id}">${p.name}</a></h5>
                                                <p>${p.shortDesc}</p>
                                                <div class="d-flex justify-content-center flex-lg-wrap">
                                                    <p class="text-dark fs-5 fw-bold mb-0">
                                                        <fmt:formatNumber type="number"
                                                                          value="${p.price}"/> VNĐ
                                                    </p>
                                                    <button data-product-id="${p.id}"
                                                            class="btnAddToCartHomepage btn border border-secondary rounded-pill px-3 text-primary">
                                                        <i
                                                                class="fa fa-shopping-bag me-2 text-primary"></i>
                                                        Thêm vào giỏ hàng
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>

                            </div>
                        </div>
                    </div>
                </div>
                <div id="tab-2" class="tab-pane fade show p-0">
                    <div class="row g-4">
                        <div class="col-lg-12">
                            <div class="row g-4">
                                <c:forEach items="${business}" var="p">
                                    <div class="col-md-6 col-lg-4 col-xl-3">
                                        <div
                                                class="border border-primary rounded position-relative vesitable-item">
                                            <div class="vesitable-img">
                                                <img src="images/product/${p.image}"
                                                     class="img-fluid w-100 rounded-top" alt="">
                                            </div>
                                            <div class="text-white bg-primary px-3 py-1 rounded position-absolute"
                                                 style="top: 10px; right: 10px;">${p.purpose}
                                            </div>
                                            <div class="p-4 rounded-bottom">
                                                <h5><a href="/product/${p.id}">${p.name}</a></h5>
                                                <p>${p.shortDesc}</p>
                                                <div class="d-flex justify-content-center flex-lg-wrap">
                                                    <p class="text-dark fs-5 fw-bold mb-0">
                                                        <fmt:formatNumber type="number"
                                                                          value="${p.price}"/> VNĐ
                                                    </p>
                                                    <button data-product-id="${p.id}"
                                                            class="btnAddToCartHomepage btn border border-secondary rounded-pill px-3 text-primary">
                                                        <i
                                                                class="fa fa-shopping-bag me-2 text-primary"></i>
                                                        Thêm vào giỏ hàng
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="tab-3" class="tab-pane fade show p-0">
                    <div class="row g-4">
                        <div class="col-lg-12">
                            <div class="row g-4">
                                <c:forEach items="${thin}" var="p">
                                    <div class="col-md-6 col-lg-4 col-xl-3">
                                        <div
                                                class="border border-primary rounded position-relative vesitable-item">
                                            <div class="vesitable-img">
                                                <img src="images/product/${p.image}"
                                                     class="img-fluid w-100 rounded-top" alt="">
                                            </div>
                                            <div class="text-white bg-primary px-3 py-1 rounded position-absolute"
                                                 style="top: 10px; right: 10px;">${p.purpose}
                                            </div>
                                            <div class="p-4 rounded-bottom">
                                                <h5><a href="/product/${p.id}">${p.name}</a></h5>
                                                <p>${p.shortDesc}</p>
                                                <div class="d-flex justify-content-center flex-lg-wrap">
                                                    <p class="text-dark fs-5 fw-bold mb-0">
                                                        <fmt:formatNumber type="number"
                                                                          value="${p.price}"/> VNĐ
                                                    </p>
                                                    <button data-product-id="${p.id}"
                                                            class="btnAddToCartHomepage btn border border-secondary rounded-pill px-3 text-primary">
                                                        <i
                                                                class="fa fa-shopping-bag me-2 text-primary"></i>
                                                        Thêm vào giỏ hàng
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="tab-4" class="tab-pane fade show p-0">
                    <div class="row g-4">
                        <div class="col-lg-12">
                            <div class="row g-4">
                                <c:forEach items="${gaming}" var="p">
                                    <div class="col-md-6 col-lg-4 col-xl-3">
                                        <div
                                                class="border border-primary rounded position-relative vesitable-item">
                                            <div class="vesitable-img">
                                                <img src="images/product/${p.image}"
                                                     class="img-fluid w-100 rounded-top" alt="">
                                            </div>
                                            <div class="text-white bg-primary px-3 py-1 rounded position-absolute"
                                                 style="top: 10px; right: 10px;">${p.purpose}
                                            </div>
                                            <div class="p-4 rounded-bottom">
                                                <h5><a href="/product/${p.id}">${p.name}</a></h5>
                                                <p>${p.shortDesc}</p>
                                                <div class="d-flex justify-content-center flex-lg-wrap">
                                                    <p class="text-dark fs-5 fw-bold mb-0">
                                                        <fmt:formatNumber type="number"
                                                                          value="${p.price}"/> VNĐ
                                                    </p>
                                                    <button data-product-id="${p.id}"
                                                            class="btnAddToCartHomepage btn border border-secondary rounded-pill px-3 text-primary">
                                                        <i
                                                                class="fa fa-shopping-bag me-2 text-primary"></i>
                                                        Thêm vào giỏ hàng
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Fruits Shop End-->

<!-- Footer Start -->
<jsp:include page="../layout/footer.jsp"/>
<!-- Footer End -->


<!-- Back to Top -->
<a href="#" class="btn btn-primary border-3 border-primary rounded-circle back-to-top"><i
        class="fa fa-arrow-up"></i></a>


<!-- JavaScript Libraries -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="/client/lib/easing/easing.min.js"></script>
<script src="/client/lib/waypoints/waypoints.min.js"></script>
<script src="/client/lib/lightbox/js/lightbox.min.js"></script>
<script src="/client/lib/owlcarousel/owl.carousel.min.js"></script>
<script
        src="https://cdnjs.cloudflare.com/ajax/libs/jquery-toast-plugin/1.3.2/jquery.toast.min.js"></script>
<!-- Template Javascript -->
<script src="/client/js/main.js"></script>
</body>

</html>