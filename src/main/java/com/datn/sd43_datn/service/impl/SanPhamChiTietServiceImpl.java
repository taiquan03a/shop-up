package com.datn.sd43_datn.service.impl;

import com.datn.sd43_datn.entity.SanPham;
import com.datn.sd43_datn.entity.SanPhamChiTiet;
import com.datn.sd43_datn.entity.ThuocTinhSp.*;
import com.datn.sd43_datn.repository.SanPhamChiTietRepository;
import com.datn.sd43_datn.repository.SanPhamRepository;
import com.datn.sd43_datn.repository.ThuocTinhSpRepository.*;
import com.datn.sd43_datn.service.SanPhamChiTietService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class SanPhamChiTietServiceImpl implements SanPhamChiTietService {
    @Autowired
    private SanPhamChiTietRepository sanPhamChiTietRepository;




    @Autowired
    AnhRepository anhEntityRepository;
    @Autowired
    ChatLieuRepository chatlieuEntityRepository;
    @Autowired
    CoAoRepository CoaoEntityRepository;
    @Autowired
    DangAoRepository dangaoEntityRepository;
    @Autowired
    HoaTietRepository hoatietEntityRepository;
    @Autowired
    KichCoRepository kichcoEntityRepository;
    @Autowired
    MauSacRepository  mausacEntityRepository;
    @Autowired
    SanPhamRepository sanphamEntityRepository;
    @Autowired
    TayAoRepository  tayaoEntityRepository;
    @Autowired
    ThuongHieuRepository thuonghieuEntityRepository;
    @Autowired
    private SanPhamChiTietRepository sanphamchitietEntityRepository;



    @Override
    public List<SanPhamChiTiet> getSanPhamChiTiet() {
        return sanPhamChiTietRepository.findAll();
    }



    @Override
    public List<SanPhamChiTiet> findAllById(Iterable<Long> integers) {
        return sanphamchitietEntityRepository.findAllById(integers);
    }

    @Override
    public <S extends SanPhamChiTiet> S save(S entity) {
        return sanphamchitietEntityRepository.save(entity);
    }

    @Override
    public Optional<SanPhamChiTiet> findById(Long integer) {
        return sanphamchitietEntityRepository.findById(integer);
    }

    @Override
    public void deleteById(Long integer) {
        sanphamchitietEntityRepository.deleteById(integer);

    }

    @Override
    public List<SanPhamChiTiet> findBySanPhamKeyWord(String keyword){
        return sanphamchitietEntityRepository.findBySanPhamKeyWord(keyword);

    }
    @Override
    public Page<SanPhamChiTiet> sanphamchitietEntityPage(String keyword, int pageNumber) {
        Pageable pageable = PageRequest.of(pageNumber - 1, 10);
        if (keyword != null) {
            return sanphamchitietEntityRepository.pageSpct(pageable, keyword);
        }
        return sanphamchitietEntityRepository.findAll(pageable);
    }
    @Override
    public List<Anh> findAnhCreateAt(){
        return anhEntityRepository.getAnhCreateAt();
    }
    @Override
    public List<ChatLieu> findChatLieuCreateAt(){
        return chatlieuEntityRepository.getCreateAt();
    }
    @Override
    public List<CoAo> findCoAoCreateAt(){
        return CoaoEntityRepository.getCreateAt();
    }
    @Override
    public List<DangAo> findDangAoCreateAt(){
        return dangaoEntityRepository.getCreateAt();
    }
    @Override
    public List<HoaTiet> findHoaTietCreateAt(){
        return hoatietEntityRepository.getCreateAt();
    }  @Override
    public List<KichCo> findKichCoCreateAt(){
        return kichcoEntityRepository.getCreateAt();

    }
    @Override
    public List<MauSac> findMauSacCreateAt(){
        return mausacEntityRepository.getCreateAt();

    }
    @Override
    public List<SanPham> findSanPhamCreateAt(){
       return sanphamEntityRepository.getCreateAt();
    }
    @Override
    public List<TayAo> findTayAoCreateAt(){
        return tayaoEntityRepository.getCreateAt();

    }
    @Override
    public List<ThuongHieu> findThuongHieuCreateAt(){
        return thuonghieuEntityRepository.getCreateAt();

    }

    @Override
    public void findTrangThai1(Long id){
        SanPhamChiTiet sanPhamChiTiet = sanPhamChiTietRepository.findById(id).get();
        if(sanPhamChiTiet.getTrangThai() == 0){
            sanPhamChiTiet.setTrangThai(1);
            sanPhamChiTietRepository.save(sanPhamChiTiet);
        }else {
            sanPhamChiTiet.setTrangThai(0);
            sanPhamChiTietRepository.save(sanPhamChiTiet);
        }
    }
    @Override
    public void findTrangThai0(Long id){
        sanphamchitietEntityRepository.updateTrangThai0(id);
    }
}
