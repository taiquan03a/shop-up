package com.datn.sd43_datn.request;

import lombok.*;

@Data
@Builder
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class TaoKhachHangRequest {
    private String tenKhachHang;
    private String email;
    private String matKhau;
    private String sdt;
    private String gioiTinh;
    private String thanhPho;
    private String huyen;
    private String diaChi;
}
