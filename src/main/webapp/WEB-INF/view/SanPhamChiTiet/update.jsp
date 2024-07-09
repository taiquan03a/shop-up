<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cập nhật chi tiết sản phẩm</title>
</head>
<body>
<div>
    <h3>Cập nhật chi tiết sản phẩm</h3>
</div>
<div class="container-xl">
    <form:form action="${pageContext.request.contextPath}/SanPhamChiTiet/update" method="post" modelAttribute="spct" class="row">
        <form:hidden path="id"/>
        <div class="col-4">
            <label>Ảnh</label>
            <div class="input-group">
                    <span class="input-group-text btn btn-outline-success" id="basic-addon1">
                        <a href="${pageContext.request.contextPath}/SanPhamChiTiet/addAnh" class="btn">
                            <i class="fa-solid fa-plus"></i>
                        </a>
                    </span>
                <form:select path="anh" cssClass="form-select" aria-label="Default select example">
                    <c:forEach items="${anh}" var="item">
                        <form:option value="${item.ID}" disabled="${item.trangThai != 0}">
                            ${item.anh} - ${item.moTa}
                        </form:option>
                    </c:forEach>
                </form:select>
            </div>
        </div>

        <!-- Repeat similar structure for other fields -->

        <div class="col-4">
            <label>Giá nhập</label>
            <form:input path="giaNhap" cssClass="form-control" type="number" min="0" required="true"/>
        </div>
        <div class="col-4">
            <label>Giá bán</label>
            <form:input path="giaBan" cssClass="form-control" type="number" min="0" required="true"/>
        </div>
        <div class="col-4">
            <label>Số lượng</label>
            <form:input path="soLuong" cssClass="form-control" type="number" min="0" required="true"/>
        </div>
        <div class="col-4">
            <label>Mô tả</label>
            <form:textarea path="moTa" cssClass="form-control" rows="5" cols="70" placeholder="Mô tả sản phẩm" maxlength="225"/>
        </div>
        <form:hidden path="trangThai"/>
        <form:hidden path="createdAt"/>
        <form:hidden path="createdBy"/>

        <div>
            <button type="submit" class="btn btn-outline-success mx-2" onclick="return confirm('Bạn có muốn cập nhật?')">
                <i class="fa-solid fa-plus"></i> Cập nhật
            </button>
            <a href="#" class="btn btn-outline-danger" onclick="return confirm('Bạn có muốn hủy thông tin chỉnh sửa?') && window.history.back();">
                <i class="fa-solid fa-arrow-right-from-bracket fa-rotate-180"></i> Hủy
            </a>
        </div>
    </form:form>
</div>
</body>
</html>