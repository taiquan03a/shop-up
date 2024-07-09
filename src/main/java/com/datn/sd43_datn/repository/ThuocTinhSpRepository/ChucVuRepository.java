package com.datn.sd43_datn.repository.ThuocTinhSpRepository;

import com.datn.sd43_datn.entity.NVien.ChucVu;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


public interface ChucVuRepository extends JpaRepository<ChucVu, Long> {
    @Query("SELECT c from ChucVu c where concat(c.id,c.tenChucVu) Like %?1%")
    Page<ChucVu> findByKeyWord(Pageable pageable, String keyword);
    @Query("select  c from ChucVu c order by c.ngayTao desc ")
    List<ChucVu> getCreateAt();
    @Modifying //cho biêt thay doi du lieu
    @Transactional //dam bao phuong thuc duoc thuc thi
    @Query("UPDATE ChucVu set trangThai=1 where id=?1")
    void updateTrangThai1(Integer id);

    @Modifying
    @Transactional
    @Query("UPDATE ChucVu set trangThai=0 where id=?1")
    void updateTrangThai0(Integer id);
}
