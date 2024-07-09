package com.datn.sd43_datn.dto;

import com.datn.sd43_datn.entity.DiaChi;
import jakarta.persistence.Column;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class KhachHangDto {
    private Long ID;
    private String tenKhachHang;
    private boolean kieuKhachHang;
    private String sdt;
    private String gioiTinh;
    private String email;
    private Date ngayTao;
    private boolean trangThai;
    private String anh;
    private String matKhau;
    private List<DiaChi> diaChiList;
}
