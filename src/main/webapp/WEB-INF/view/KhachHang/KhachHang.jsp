<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/css/quanli.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0-alpha1/js/bootstrap.min.js" integrity="sha512-eHx4nbBTkIr2i0m9SANm/cczPESd0DUEcfl84JpIuutE6oDxPhXvskMR08Wmvmfx5wUpVjlWdi82G5YLvqqJdA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0-alpha1/css/bootstrap.min.css" integrity="sha512-72OVeAaPeV8n3BdZj7hOkaPSEk/uwpDkaGyP4W2jSzAC8tfiO4LMEDWoL3uFp5mcZu+8Eehb4GhZWFwvrss69Q==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha.4/js/bootstrap.min.js" integrity="sha512-Cy3gSrKCS8aJ7AIaammc0wLXyKRmTa8ntgHvU01Tuz4EdsqVgk/lKzFm/b/8RxOWBaoHI2uGLLU6rXMbqKcGHA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha.4/css/bootstrap.min.css" integrity="sha512-FOS5ANNUsuvefA5Fm6hZBLsxqfF105LIysEgV8VNz29jZLVYIhI+MOLKPBmMXgkHhARFHf5pE7KbXOLE6TXW0A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.datatables.net/2.0.8/js/dataTables.js"></script>
    <script src="https://cdn.datatables.net/2.0.8/js/dataTables.bootstrap5.js"></script>
    <script src="https://cdn.datatables.net/select/2.0.3/js/dataTables.select.js"></script>
    <script src="https://cdn.datatables.net/select/2.0.3/js/select.bootstrap5.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/2.0.8/css/dataTables.bootstrap5.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/select/2.0.3/css/select.bootstrap5.css">

</head>
<body>
<div class="wrapper">
    <!-- Sidebar  -->
    <nav id="sidebar">
        <div class="sidebar-header">
            <img src="/img/logo.jpg" alt="">
        </div>

        <ul class="list-unstyle components">
            <li>
                <i class="fa-solid fa-chart-simple"></i>
                <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false">Thống kê</a>
            </li>
            <li>
                <i class="fa-solid fa-money-bill"></i>
                <a href="/hoa-don/create">Bán hàng tại quầy</a>
            </li>
            <li>
                <img src="/img/order.png" alt="">
                <a href="/hoa-don/index" data-toggle="collapse" aria-expanded="false">Quản lí đơn hàng</a>
            </li>
            <li>
                <img src="/img/icon_ao.jpg" alt="">
                <a href="#">Quản lí sản phẩm</a>
            </li>
            <li>
                <i class="fa-solid fa-retweet"></i>
                <a href="#">Trả hàng</a>
            </li>
            <li>
                <i class="fa-solid fa-ticket"></i>
                <a href="#">Giảm giá</a>
            </li>
            <li>
                <i class="fa-solid fa-user-group"></i>
                <a href="#">Tài khoản</a>
            </li>
        </ul>
    </nav>
    <div class="w-100">
        <div class="d-flex justify-content-between w-100 align-items-center nav-bar">
            <button type="button" id="sidebarCollapse" style="height: 40px; color: black; background-color: transparent !important;" class="btn">
                <i class="fas fa-align-left"></i>
            </button>
            <div class="d-flex gap-3">
                <i class="fa-regular fa-bell"></i>
                <a href="#">Tài khoản</a>
            </div>

        </div>

        <!-- content -->
        <div style="width: 100%; background-color: #eee; padding: 20px;">
            <h3>Quản lí khách hàng</h3>
            <form action="/hoa-don/filter">
                <div class="filter">
                    <div class="w-100 first">
                        <div>
                            Trạng thái:
                            <select name="status" id="status" onchange="filterTable()">
                                <option value="">Tất cả</option>
                                <option value="1">Hoạt động</option>
                                <option value="0">Ngừng hoạt động</option>
                            </select>
                        </div>
                        <div class="d-flex justify-content-between gap-4">
                            <a href="/khach-hang/create"><div class="function">Tạo khách hàng</div></a>
                        </div>
                    </div>

                    <div class="w-100 second mt-4">
                        <div class="align-items-center w-50 date">
                            Từ ngày:
                            <input name="batDau" type="date" placeholder="Từ ngày">
                            Đến ngày:
                            <input name="ketThuc" type="date" placeholder="Đến ngày">
                        </div>
                        <button type="submit" class="function">Tìm kiếm</button>
                    </div>
                </div>
            </form>
            <div class="w-100 mt-5 d-flex justify-content-center align-items-center" style="background-color: #fff; border-radius: 10px;">
                <table id="example" class="table table-striped p-5" style="width:100%">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>Mã</th>
                        <th>Email</th>
                        <th>Họ tên</th>
                        <th>Ngày tạo</th>
                        <th>SĐT</th>
                        <th>Giới tính</th>
                        <th>Trạng thái</th>
                        <th>Hành động</th>
                    </tr>
                    </thead>
                    <tbody class="index">
                    <c:forEach var="khachHang" items="${khachHangs}" varStatus="status">
                    <tr>
                        <td>${status.index +1}</td>
                            <%--                        <td>${hoaDon.ID}</td>--%>
                        <td>${khachHang.maKhachHang}</td>
                        <td>${khachHang.email}</td>
                        <td>${khachHang.tenKhachHang}</td>
                        <td>${khachHang.ngayTao}</td>
                        <td>${khachHang.sdt}</td>
                        <td>${khachHang.gioiTinh}</td>
                        <td>${khachHang.trangThai ? 'Hoạt động':'Ngừng hoạt động'}</td>

                        <td style="text-align: center;"><a href="/khach-hang/${khachHang.ID}"><i class="fa-solid fa-pen-to-square" style="color: purple; font-size: 18px;"></i></a>
                        <a style="margin-left: 6px" href="status/${khachHang.ID}"><i class="fa-solid fa-ban" style="color: red; font-size: 18px;"></i></a>
                        </td>
                    </tr>
                    </c:forEach>


                </table>
            </div>

        </div>

    </div>

</div>
</body>
</html>

<script>
    $(document).ready(function () {
        $('#sidebarCollapse').on('click', function () {
            $('#sidebar').toggleClass('active');
        });
    });

    new DataTable('#example', {
        select: false,
        searching: true,
        language:{
            search: "Tìm kiếm theo từ khóa:",
            lengthMenu: "_MENU_ khách hàng mỗi trang",
            info: "Hiển thị từ _START_ đến _END_ của _TOTAL_ khách hàng",
            infoEmpty: "Không có khách hàng nào",
        }
    });
</script>
<script>
    function filterTable() {
        var select = document.getElementById("status");
        var filter = select.value;
        var table = document.getElementById("example");
        var tr = table.getElementsByTagName("tr");

        for (var i = 1; i < tr.length; i++) {
            var td = tr[i].getElementsByTagName("td")[7];
            if (td) {
                var txtValue = td.textContent || td.innerText;
                if (filter === "") {
                    tr[i].style.display = "";
                } else if (filter === "1" && txtValue === "Hoạt động") {
                    tr[i].style.display = "";
                } else if (filter === "0" && txtValue === "Ngừng hoạt động") {
                    tr[i].style.display = "";
                } else {
                    tr[i].style.display = "none";
                }
            }
        }
    }
</script>