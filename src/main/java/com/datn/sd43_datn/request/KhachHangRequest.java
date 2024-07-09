package com.datn.sd43_datn.request;

import lombok.Builder;
import lombok.Data;
import lombok.ToString;

@Data
@Builder
@ToString
public class KhachHangRequest {
    private Long id;
    private String maKhachHang;
    private String email;
    private String hoTen;
    private String ngaySinh;
    private String sdt;
    private String gioiTinh;
    private Boolean trangThai;
}
