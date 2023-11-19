package com.example.demo.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Table(name = "Students")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class SinhVien {

    @Column(name = "id")
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String id;

    @Column(name = "ten")
    private String ten;

    @Column(name = "diaChi")
    private String diaChi;

    @Column(name = "gioiTinh")
    private String gioiTinh;

    @ManyToOne
    @JoinColumn(name = "lop")
    private LopHoc lop;

    @Column(name = "chieuCao")
    private String chieuCao;

    @Column(name = "canNang")
    private String canNang;


}
