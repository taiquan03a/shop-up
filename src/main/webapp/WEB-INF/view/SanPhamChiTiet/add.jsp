<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/css/quanli.css">
    <link rel="stylesheet" href="/css/detail.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0-alpha1/js/bootstrap.min.js" integrity="sha512-eHx4nbBTkIr2i0m9SANm/cczPESd0DUEcfl84JpIuutE6oDxPhXvskMR08Wmvmfx5wUpVjlWdi82G5YLvqqJdA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0-alpha1/css/bootstrap.min.css" integrity="sha512-72OVeAaPeV8n3BdZj7hOkaPSEk/uwpDkaGyP4W2jSzAC8tfiO4LMEDWoL3uFp5mcZu+8Eehb4GhZWFwvrss69Q==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha.4/js/bootstrap.min.js" integrity="sha512-Cy3gSrKCS8aJ7AIaammc0wLXyKRmTa8ntgHvU01Tuz4EdsqVgk/lKzFm/b/8RxOWBaoHI2uGLLU6rXMbqKcGHA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha.4/css/bootstrap.min.css" integrity="sha512-FOS5ANNUsuvefA5Fm6hZBLsxqfF105LIysEgV8VNz29jZLVYIhI+MOLKPBmMXgkHhARFHf5pE7KbXOLE6TXW0A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.datatables.net/2.0.8/js/dataTables.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">

    <script src="https://cdn.datatables.net/2.0.8/js/dataTables.bootstrap5.js"></script>
    <script src="https://cdn.datatables.net/select/2.0.3/js/dataTables.select.js"></script>
    <script src="https://cdn.datatables.net/select/2.0.3/js/select.bootstrap5.js"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/2.0.8/css/dataTables.bootstrap5.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/select/2.0.3/css/select.bootstrap5.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.2/css/bootstrap.min.css" integrity="sha384-y3tfxAZXuh4HwSYylfB+J125MxIs6mR5FOHamPBG064zB+AFeWH94NdvaCBm8qnd" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.2/js/bootstrap.min.js" integrity="sha384-vZ2WRJMwsjRMW/8U7i6PWi6AlO1L79snBrmgiDpgIWJ82z8eA5lenwvxbMV1PAh7" crossorigin="anonymous"></script>
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
                <a href="" data-toggle="collapse" aria-expanded="false">Thống kê</a>
            </li>
            <li>
                <i class="fa-solid fa-money-bill"></i>
                <a href="/hoa-don/create">Bán hàng tại quầy</a>
            </li>
            <li>
                <img src="/img/order.png" alt="">
                <a href="/hoa-don/index">Quản lí đơn hàng</a>
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
            <button type="button" id="sidebarCollapse" style="height: 40px; color: black; background: none !important;" class="btn">
                <i class="fas fa-align-left"></i>
            </button>
            <div class="d-flex gap-3">
                <i class="fa-regular fa-bell"></i>
                <a href="#">Tài khoản</a>
            </div>

        </div>

        <!-- content -->
        <div style="width: 100%; background-color: #eee; padding: 20px;">


            <div class="filter mt-5">
                <div class="d-flex justify-content-between line-bottom">
                    <h3 style=" padding-bottom: 15px;">Thêm sản phẩm chi tiết</h3>
                </div>
                <form action="${pageContext.request.contextPath}/SanPhamChiTiet/add" method="post" modelAttribute="spct" class="row">

                    <div class="col-4">
                        <label>Ảnh</label>
                        <div class="input-group">
                    <span class="input-group-text btn btn-outline-success" id="basic-addon1">
                        <a href="${pageContext.request.contextPath}/SanPhamChiTiet/addAnh" class="btn"><i class="fa-solid fa-plus"></i></a>
                    </span>
                            <select class="form-select" aria-label="Default select example" name="anh.ID">
                                <c:forEach var="anh" items="${anh}" varStatus="status">
                                    <c:if test="${anh.trangThai == 0}">
                                        <option value="${anh.ID}">${anh.anh} - ${anh.moTa}</option>
                                    </c:if>
                                </c:forEach>
                            </select>
                        </div>
                    </div>

                    <div class="col-4">
                        <label>Sản phẩm</label>
                        <div class="input-group">
                    <span class="input-group-text btn btn-outline-success" id="basic-addon2">
                        <a href="${pageContext.request.contextPath}/SanPhamChiTiet/addSanPham" class="btn"><i class="fa-solid fa-plus"></i></a>
                    </span>
                            <select class="form-select" aria-label="Default select example" name="sanpham.id">
                                <c:forEach var="sanpham" items="${sanpham}" varStatus="status">
                                    <c:if test="${sanpham.trangThai == 0}">
                                        <option value="${sanpham.ID}">${sanpham.tenSanPham}</option>
                                    </c:if>
                                </c:forEach>
                            </select>
                        </div>
                    </div>

                    <div class="col-4">
                        <label>Chất liệu</label>
                        <div class="input-group">
                    <span class="input-group-text btn btn-outline-success" id="basic-addon3">
                        <a href="${pageContext.request.contextPath}/SanPhamChiTiet/addChatLieu" class="btn"><i class="fa-solid fa-plus"></i></a>
                    </span>
                            <select class="form-select" aria-label="Default select example" name="chatlieu.id">
                                <c:forEach var="chatlieu" items="${chatlieu}" varStatus="status">
                                    <c:if test="${chatlieu.trangThai == 0}">
                                        <option value="${chatlieu.ID}">${chatlieu.tenChatLieu}</option>
                                    </c:if>
                                </c:forEach>
                            </select>
                        </div>
                    </div>

                    <div class="col-4">
                        <label>Tay áo</label>
                        <div class="input-group">
                    <span class="input-group-text btn btn-outline-success" id="basic-addon4">
                        <a href="${pageContext.request.contextPath}/SanPhamChiTiet/addTayAo" class="btn"><i class="fa-solid fa-plus"></i></a>
                    </span>
                            <select class="form-select" aria-label="Default select example" name="tayao.id">
                                <c:forEach var="tayao" items="${tayao}" varStatus="status">
                                    <c:if test="${tayao.trangThai == 0}">
                                        <option value="${tayao.ID}">${tayao.tenKieuTayAo}</option>
                                    </c:if>
                                </c:forEach>
                            </select>
                        </div>
                    </div>

                    <div class="col-4">
                        <label>Cổ áo</label>
                        <div class="input-group">
                    <span class="input-group-text btn btn-outline-success" id="basic-addon5">
                        <a href="${pageContext.request.contextPath}/SanPhamChiTiet/addCoAo" class="btn"><i class="fa-solid fa-plus"></i></a>
                    </span>
                            <select class="form-select" aria-label="Default select example" name="coao.id">
                                <c:forEach var="coao" items="${coao}" varStatus="status">
                                    <c:if test="${coao.trangThai == 0}">
                                        <option value="${coao.ID}">${coao.tenLoaiCoAo}</option>
                                    </c:if>
                                </c:forEach>
                            </select>
                        </div>
                    </div>

                    <div class="col-4">
                        <label>Dáng áo</label>
                        <div class="input-group">
                    <span class="input-group-text btn btn-outline-success" id="basic-addon6">
                        <a href="${pageContext.request.contextPath}/SanPhamChiTiet/addDangAo" class="btn"><i class="fa-solid fa-plus"></i></a>
                    </span>
                            <select class="form-select" aria-label="Default select example" name="dangao.id">
                                <c:forEach var="dangao" items="${dangao}" varStatus="status">
                                    <c:if test="${dangao.trangThai == 0}">
                                        <option value="${dangao.ID}">${dangao.tenKieuDangAo}</option>
                                    </c:if>
                                </c:forEach>
                            </select>
                        </div>
                    </div>

                    <div class="col-4">
                        <label>Họa tiết</label>
                        <div class="input-group">
                    <span class="input-group-text btn btn-outline-success" id="basic-addon7">
                        <a href="${pageContext.request.contextPath}/SanPhamChiTiet/addHoaTiet" class="btn"><i class="fa-solid fa-plus"></i></a>
                    </span>
                            <select class="form-select" aria-label="Default select example" name="hoatiet.id">
                                <c:forEach var="hoatiet" items="${hoatiet}" varStatus="status">
                                    <c:if test="${hoatiet.trangThai == 0}">
                                        <option value="${hoatiet.ID}">${hoatiet.tenHoaTiet}</option>
                                    </c:if>
                                </c:forEach>
                            </select>
                        </div>
                    </div>

                    <div class="col-4">
                        <label>Kích cỡ</label>
                        <div class="input-group">
                    <span class="input-group-text btn btn-outline-success" id="basic-addon8">
                        <a href="${pageContext.request.contextPath}/SanPhamChiTiet/addKichCo" class="btn"><i class="fa-solid fa-plus"></i></a>
                    </span>
                            <select class="form-select" aria-label="Default select example" name="kichco.id">
                                <c:forEach var="kichco" items="${kichco}" varStatus="status">
                                    <c:if test="${kichco.trangThai == 0}">
                                        <option value="${kichco.ID}">${kichco.tenKichCo}</option>
                                    </c:if>
                                </c:forEach>
                            </select>
                        </div>
                    </div>

                    <div class="col-4">
                        <label>Màu sắc</label>
                        <div class="input-group">
                    <span class="input-group-text btn btn-outline-success" id="basic-addon9">
                        <a href="${pageContext.request.contextPath}/SanPhamChiTiet/addMauSac" class="btn"><i class="fa-solid fa-plus"></i></a>
                    </span>
                            <select class="form-select" aria-label="Default select example" name="mausac.id">
                                <c:forEach var="mausac" items="${mausac}" varStatus="status">
                                    <c:if test="${mausac.trangThai == 0}">
                                        <option value="${mausac.ID}">${mausac.tenMauSac}</option>
                                    </c:if>
                                </c:forEach>
                            </select>
                        </div>
                    </div>

                    <div class="col-4">
                        <label>Thương hiệu</label>
                        <div class="input-group">
                    <span class="input-group-text btn btn-outline-success" id="basic-addon10">
                        <a href="${pageContext.request.contextPath}/SanPhamChiTiet/addThuongHieu" class="btn"><i class="fa-solid fa-plus"></i></a>
                    </span>
                            <select class="form-select" aria-label="Default select example" name="thuonghieu.id">
                                <c:forEach var="thuonghieu" items="${thuonghieu}" varStatus="status">
                                    <c:if test="${thuonghieu.trangThai == 0}">
                                        <option value="${thuonghieu.ID}">${thuonghieu.tenThuongHieu}</option>
                                    </c:if>
                                </c:forEach>
                            </select>
                        </div>
                    </div>

                    <div class="col-4">
                        <label>Giá nhập</label>
                        <input class="form-control" type="number" name="giaNhap" min="0" required>
                    </div>
                    <div class="col-4">
                        <label>Giá bán</label>
                        <input class="form-control" type="number" name="giaBan" min="0" required>
                    </div>
                    <div class="col-4">
                        <label>Số lượng</label>
                        <input class="form-control" type="number" name="soLuong" min="0" required>
                    </div>
                    <div class="col-4">
                        <label>Mô tả</label>
                        <textarea rows="5" cols="70" placeholder="Mô tả sản phẩm" class="form-control" name="moTa" maxlength="225"></textarea>
                    </div>

                    <input type="hidden" name="trangThai" value="0">

                    <div>
                        <button type="submit" class="btn btn-outline-success mx-2" onclick="return confirm('Bạn có muốn thêm mới?')">
                            <i class="fa-solid fa-plus"></i> Thêm
                        </button>
                        <a href="javascript:history.back()" class="btn btn-outline-danger" onclick="return confirm('Bạn có muốn hủy thông tin vừa thêm?')">
                            <i class="fa-solid fa-arrow-right-from-bracket fa-rotate-180"></i> Hủy
                        </a>
                    </div>
                </form>
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
        searching: true
    });

</script>

<script>
    updateTotalPrice()
    getListSelected()
    setValueInput()
    function handleButtonDelete(s) {
        if( ! confirm("Bạn có muốn xóa sản phẩm này?") ){
            event.preventDefault();
        } else {
            var storedArray = localStorage.getItem('quantity');
            var newObject = {};
            newObject = JSON.parse(storedArray);
            if (newObject.hasOwnProperty(s)) {
                delete newObject[s];
            }
            localStorage.setItem('quantity', JSON.stringify(newObject));
            setValueInput();
            location.reload();
        }
    }

    function handleSelect(s) {
        var storedArray = localStorage.getItem('quantity');
        var newObject = {};
        if (!storedArray) newObject[s] = 1;
        else {
            newObject = JSON.parse(storedArray);
            if (!newObject.hasOwnProperty(s)) newObject[s] = 1;
        }

        localStorage.setItem('quantity', JSON.stringify(newObject));
        setValueInput()
        location.reload();
    }

    var totalPriceInput = document.getElementById('total_price');
    var returnInput = document.getElementById('return');
    totalPriceInput.addEventListener('input', function() {
        var totalPrice = parseInt(localStorage.getItem('price_items'))
        var customerPayment = parseFloat(totalPriceInput.value);
        var change = customerPayment - totalPrice;
        returnInput.value = isNaN(returnInput.value) ? 0 : change;
    });

    function updateQuantity(n, price, amount) {
        var idObject = JSON.parse(localStorage.getItem('quantity'));
        idObject[n] = document.getElementById(n).value;
        if(document.getElementById(n).value < amount){
            document.getElementById('message-' + n).innerHTML = ''
            localStorage.setItem('quantity', JSON.stringify(idObject));
            document.querySelector(".price-" + n).innerHTML = document.getElementById(n).value * price + " VNĐ";
            document.querySelector(".sl-" + n).innerHTML = 'Số lượng: '+document.getElementById(n).value
            updateTotalPrice()
            setValueInput()
        }else{
            document.getElementById('message-' + n).innerHTML = 'Không đủ hàng!'
        }
    }

    function setValueInput(){
        var idValue = localStorage.getItem('quantity');
        var inputElement = document.getElementById('list_product');
        inputElement.value = idValue;
    }

    function getListSelected(){
        var listItemSelected = JSON.parse(localStorage.getItem('quantity')) ?? {};

        <c:forEach var="sanPham" items="${sanPhams}">
        if (listItemSelected.hasOwnProperty(${sanPham.ID})){
            document.getElementById('item-${sanPham.ID}').classList.remove("d-none")
        }
        </c:forEach>
    }

    function updateTotalPrice() {
        totalPrice = 0
        var listItemSelected = JSON.parse(localStorage.getItem('quantity')) ?? {};
        <c:forEach var="sanPham" items="${sanPhams}">
        if (listItemSelected.hasOwnProperty(${sanPham.ID})) {
            var s =  (document.querySelector('.price-${sanPham.ID}').innerText).trim()
            var priceValue = s.split(" ")[0];
            totalPrice += parseInt(priceValue)
        }
        </c:forEach>
        localStorage.setItem('price_items', totalPrice)
        document.querySelector(".total-items-price").innerHTML = totalPrice + " VNĐ"
        document.getElementById('prices').innerHTML = totalPrice + " VNĐ"
    }

</script>

<script>
    var btnSubmit = document.getElementById('btn-submit');
    var form = document.getElementById('myForm');
    btnSubmit.addEventListener('click', function(event) {
        var returnInput = document.getElementById('return');
        var tienTra = parseInt(returnInput.value);
        var listItemSelected = JSON.parse(localStorage.getItem('quantity')) ?? {};
        if (!confirm("Bạn có chắc chắn muốn xác nhận đơn hàng?")) {
            event.preventDefault();
        }
        else if (Object.keys(listItemSelected).length === 0) {
            event.preventDefault();
            alert("Giỏ hàng không có sản phẩm. Vui lòng thêm sản phẩm vào giỏ hàng trước khi xác nhận đơn hàng!");
        }
        else if (tienTra < 0) {
            event.preventDefault();
            alert("Tiền dư không được âm. Vui lòng kiểm tra lại!");
        } else if (!form.checkValidity()) {
            event.preventDefault();
            alert("Vui lòng điền đầy đủ thông tin!");
        }else{
            localStorage.clear();
            alert("Xác nhận đơn hàng thành công!");
            event.target.form.submit();
        }

    });
</script>