package com.datn.sd43_datn.request;

import lombok.*;

@Data
@Builder
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class KhachHangRequest {
    private Long ID;
    private String maKhachHang;
    private String email;
    private String tenKhachHang;
    private String ngayTao;
    private String sdt;
    private String gioiTinh;
    private Boolean trangThai;
}
