package com.datn.sd43_datn.request;

import com.datn.sd43_datn.entity.DiaChi;
import jakarta.persistence.Column;
import lombok.*;

import java.util.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@ToString
public class CreateKhachHang {
    private String tenKhachHang;
    private String sdt;
    private String gioiTinh;
    private String email;
    private String anh;
    private String matKhau;
    private String idPhuong;
    private String soNha;
}
