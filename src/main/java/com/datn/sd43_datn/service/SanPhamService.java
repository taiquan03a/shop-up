package com.datn.sd43_datn.service;

import com.datn.sd43_datn.entity.SanPham;
import org.springframework.data.domain.Page;

import java.util.List;
import java.util.Optional;

public interface SanPhamService {
    List<SanPham> getAllSanPham();



    List<SanPham> findAll();

    List<SanPham> findAllById(Iterable<Long> longs);

    <S extends SanPham> S save(S entity);

    Optional<SanPham> findById(Long longs);

    void deleteById( Long longs);

    Page<SanPham> Page(String keyword, int pageNumber);

    void findTrangThai1(Integer id);

    void findTrangThai0(Integer id);
}
