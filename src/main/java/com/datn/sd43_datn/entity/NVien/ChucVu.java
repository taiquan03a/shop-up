package com.datn.sd43_datn.entity.NVien;

import com.datn.sd43_datn.entity.ThuocTinhSp.Extend.CreateEntity;
import jakarta.persistence.*;

@Entity
@Table(name = "chuc_vu")
public class ChucVu extends CreateEntity {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "Id")
    private int id;
    @Basic
    @Column(name = "TenChucVu")
    private int tenChucVu;
    @Basic
    @Column(name = "GhiChu")
    private String ghiChu;
    @Basic
    @Column(name = "TrangThai")
    private int trangThai;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getTenChucVu() {
        return tenChucVu;
    }

    public void setTenChucVu(int tenChucVu) {
        this.tenChucVu = tenChucVu;
    }

    public String getGhiChu() {
        return ghiChu;
    }

    public void setGhiChu(String ghiChu) {
        this.ghiChu = ghiChu;
    }

    public int getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(int trangThai) {
        this.trangThai = trangThai;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ChucVu that = (ChucVu) o;

        if (id != that.id) return false;
        if (tenChucVu != that.tenChucVu) return false;
        if (trangThai != that.trangThai) return false;
        if (ghiChu != null ? !ghiChu.equals(that.ghiChu) : that.ghiChu != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + tenChucVu;
        result = 31 * result + (ghiChu != null ? ghiChu.hashCode() : 0);
        result = 31 * result + trangThai;
        return result;
    }
}
