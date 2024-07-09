package com.datn.sd43_datn.service;

import com.datn.sd43_datn.dto.KhachHangDto;
import com.datn.sd43_datn.entity.KhachHang;
import com.datn.sd43_datn.request.CreateKhachHang;
import com.datn.sd43_datn.request.DiaChiRequest;

import java.util.List;

public interface KhachHangService {
    List<KhachHang> getKhachHang();
    KhachHangDto getKhachHangById(long id);
    boolean editKhachHang(KhachHangDto khachHangDto, long id);
    boolean addKhachHang(CreateKhachHang createKhachHang);
    boolean deleteDiaChi(long diaChiId);
    boolean addDiaChi(long khachHangId, DiaChiRequest diaChiRequest);
}
