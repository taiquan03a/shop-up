package com.datn.sd43_datn.service.impl;

import com.datn.sd43_datn.dto.KhachHangDto;
import com.datn.sd43_datn.entity.DiaChi;
import com.datn.sd43_datn.entity.KhachHang;
import com.datn.sd43_datn.repository.DiaChiRepository;
import com.datn.sd43_datn.repository.KhachHangRepository;
import com.datn.sd43_datn.request.CreateKhachHang;
import com.datn.sd43_datn.request.DiaChiRequest;
import com.datn.sd43_datn.request.TaoKhachHangRequest;
import com.datn.sd43_datn.service.KhachHangService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class KhachHangServiceImpl implements KhachHangService {
    @Autowired
    private KhachHangRepository khachHangRepository;
    @Autowired
    private DiaChiRepository diaChiRepository;


    @Override
    public List<KhachHang> getKhachHang() {
        return khachHangRepository.findAll();
    }

    @Override
    public KhachHangDto getKhachHangById(long id) {
        KhachHang khachHang = khachHangRepository.findById(id).orElse(null);
        if (khachHang != null) {
            List<DiaChi> diaChiList = diaChiRepository.findDiaChisByKhachHang(khachHang);
            KhachHangDto khachHangDto = KhachHangDto.builder()
                    .ID(khachHang.getID())
                    .tenKhachHang(khachHang.getTenKhachHang())
                    .kieuKhachHang(khachHang.isKieuKhachHang())
                    .anh(khachHang.getAnh())
                    .sdt(khachHang.getSdt())
                    .matKhau(khachHang.getMatKhau())
                    .ngayTao(khachHang.getNgayTao())
                    .email(khachHang.getEmail())
                    .gioiTinh(khachHang.getGioiTinh())
                    .diaChiList(diaChiList)
                    .build();
            return khachHangDto;
        }
        return null;
    }

    @Override
    public boolean editKhachHang(KhachHangDto khachHangDto, long id) {
        KhachHang khachHang = khachHangRepository.findById(id).orElse(null);
        if (khachHang != null) {
            khachHang.setTenKhachHang(khachHangDto.getTenKhachHang());
            khachHang.setKieuKhachHang(khachHangDto.isKieuKhachHang());
            khachHang.setAnh(khachHangDto.getAnh());
            khachHang.setSdt(khachHangDto.getSdt());
            khachHang.setMatKhau(khachHangDto.getMatKhau());
            khachHang.setEmail(khachHangDto.getEmail());
            khachHang.setGioiTinh(khachHangDto.getGioiTinh());
            khachHangRepository.save(khachHang);
            return true;
        }
        return false;
    }

    @Override
    public boolean addKhachHang(CreateKhachHang createKhachHang) {
        String gioiTinh = "";
        if (createKhachHang.getGioiTinh().equals("1")) {
            gioiTinh = "nam";
        }else{
            gioiTinh = "nữ";
        }
        KhachHang khachHang = KhachHang.builder()
                .tenKhachHang(createKhachHang.getTenKhachHang())
                .gioiTinh(gioiTinh)
                .email(createKhachHang.getEmail())
                .anh(createKhachHang.getAnh())
                .sdt(createKhachHang.getSdt())
                .matKhau(createKhachHang.getMatKhau())
                .trangThai(true)
                .ngayTao(new Date(System.currentTimeMillis()))
                .build();
        khachHangRepository.save(khachHang);
        DiaChi diaChi = DiaChi.builder()
                .khachHang(khachHang)
                .idPhuong(createKhachHang.getIdPhuong())
                .soNha(createKhachHang.getSoNha())
                .ghiChu(null)
                .trangThai("true")
                .build();
        diaChiRepository.save(diaChi);
        return true;
    }

    @Override
    public boolean deleteDiaChi(long diaChiId) {
        DiaChi diaChi = diaChiRepository.findById(diaChiId).orElse(null);
        if (diaChi != null) {
            diaChiRepository.delete(diaChi);
            return true;
        }
        return false;
    }

    @Override
    public boolean addDiaChi(long khachHangId, DiaChiRequest diaChiRequest) {
        KhachHang khachHang = khachHangRepository.findById(khachHangId).orElse(null);
        if (khachHang != null) {
            DiaChi diaChi = DiaChi.builder()
                    .idPhuong(diaChiRequest.getPhuongId())
                    .trangThai("true")
                    .ghiChu(null)
                    .build();
            diaChiRepository.save(diaChi);
            return true;
        }
        return false;
    }
}
