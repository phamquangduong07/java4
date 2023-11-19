package com.example.demo.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.annotation.processing.Generated;

//Ánh xạ với bảng Lop trong SqlServer
@Table(name = "lop")

//Đánh dấu là 1 thc thể
@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class LopHoc {

    @Column(name = "id")
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    //Tên table = tên class

    //Thuộc tính == thuộc tính trong class

    @Column(name = "tenLop")
    private String lop;
    //Kiểu dữ liệu trong table == kiểu dữ liệu trong java
}
