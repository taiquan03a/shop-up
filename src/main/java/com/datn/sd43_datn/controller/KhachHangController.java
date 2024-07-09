package com.datn.sd43_datn.controller;

import com.datn.sd43_datn.request.CreateKhachHang;
import com.datn.sd43_datn.request.DiaChiRequest;
import com.datn.sd43_datn.request.TaoDonHangRequest;
import com.datn.sd43_datn.service.KhachHangService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/khach-hang")
@AllArgsConstructor
public class KhachHangController {
    final private KhachHangService khachHangService;

    @GetMapping("/index")
    public String getKhachHang(Model model) {
        model.addAttribute("khachHangs", khachHangService.getKhachHang());
        return "KhachHang/KhachHang";
    }

    @GetMapping("create")
    public String create(Model model) {
        CreateKhachHang createKhachHang = new CreateKhachHang();
        model.addAttribute("createKhachHang", createKhachHang);
        return "KhachHang/TaoKhachHang";
    }
    @PostMapping("create")
    public String create(@ModelAttribute CreateKhachHang createKhachHang, Model model) {
        System.out.println(createKhachHang);
        khachHangService.addKhachHang(createKhachHang);
        return "KhachHang/TaoKhachHang";
    }
    @GetMapping("/{id}")
    public String getKhachHang(@PathVariable long id, Model model) {
        DiaChiRequest diaChiRequest = new DiaChiRequest();
        model.addAttribute("diaChiRequest", diaChiRequest);
        model.addAttribute("khachHang", khachHangService.getKhachHangById(id));
        return "KhachHang/SuaKhachHang";
    }
    @PostMapping("/{id}")
    public String createDiaChi(@PathVariable long id,@ModelAttribute DiaChiRequest diaChiRequest, Model model) {
        model.addAttribute("khachHangs", khachHangService.getKhachHang());
        System.out.println(diaChiRequest);
        khachHangService.addDiaChi(id,diaChiRequest);
        return "KhachHang/KhachHang";
    }
}
