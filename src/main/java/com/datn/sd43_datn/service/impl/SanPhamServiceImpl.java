package com.datn.sd43_datn.service.impl;

import com.datn.sd43_datn.entity.SanPham;
import com.datn.sd43_datn.repository.SanPhamRepository;
import com.datn.sd43_datn.service.SanPhamService;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@AllArgsConstructor
public class SanPhamServiceImpl implements SanPhamService {
    final private SanPhamRepository sanPhamRepository;

    @Override
    public List<SanPham> getAllSanPham() {
        return sanPhamRepository.findAll();
    }



    @Autowired
    SanPhamRepository SanphamEntityRepository;

    @Override
    public List<SanPham> findAll() {
        return SanphamEntityRepository.findAll();
    }

    @Override
    public List<SanPham> findAllById(Iterable<Long> longs) {
        return SanphamEntityRepository.findAllById(longs);
    }

    @Override
    public <S extends SanPham> S save(S entity) {
        return SanphamEntityRepository.save(entity);
    }

    @Override
    public Optional<SanPham> findById(Long longs) {
        return SanphamEntityRepository.findById(longs);
    }

    @Override
    public void deleteById(Long longs) {
        SanphamEntityRepository.deleteById(longs);    }
    @Override
    public Page<SanPham> Page(String keyword, int pageNumber) {
        Pageable pageable = PageRequest.of(pageNumber - 1, 10);
        if (keyword != null) {
            return SanphamEntityRepository.findByKeyWord(pageable, keyword);
        }
        return SanphamEntityRepository.findAll(pageable);
    }
    @Override
    public void findTrangThai1(Integer id){
        SanphamEntityRepository.updateTrangThai1(id);
    }
    @Override
    public void findTrangThai0(Integer id){
        SanphamEntityRepository.updateTrangThai0(id);
    }
}
