/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n.pojo;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author Neet Nguyen
 */
@Entity
@Table(name="prescription")
public class Prescription {

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the doctorId
     */
    public int getDoctorId() {
        return doctorId;
    }

    /**
     * @param doctorId the doctorId to set
     */
    public void setDoctorId(int doctorId) {
        this.doctorId = doctorId;
    }

    /**
     * @return the patientId
     */
    public int getPatientId() {
        return patientId;
    }

    /**
     * @param patientId the patientId to set
     */
    public void setPatientId(int patientId) {
        this.patientId = patientId;
    }

    /**
     * @return the ngayKham
     */
    public String getNgayKham() {
        return ngayKham;
    }

    /**
     * @param ngayKham the ngayKham to set
     */
    public void setNgayKham(String ngayKham) {
        this.ngayKham = ngayKham;
    }

    /**
     * @return the chuanDoan
     */
    public String getChuanDoan() {
        return chuanDoan;
    }

    /**
     * @param chuanDoan the chuanDoan to set
     */
    public void setChuanDoan(String chuanDoan) {
        this.chuanDoan = chuanDoan;
    }

    /**
     * @return the active
     */
    public boolean isActive() {
        return active;
    }

    /**
     * @param active the active to set
     */
    public void setActive(boolean active) {
        this.active = active;
    }

    /**
     * @return the lichThuoc
     */
    public String getLichThuoc() {
        return lichThuoc;
    }

    /**
     * @param lichThuoc the lichThuoc to set
     */
    public void setLichThuoc(String lichThuoc) {
        this.lichThuoc = lichThuoc;
    }

    /**
     * @return the loiKhuyen
     */
    public String getLoiKhuyen() {
        return loiKhuyen;
    }

    /**
     * @param loiKhuyen the loiKhuyen to set
     */
    public void setLoiKhuyen(String loiKhuyen) {
        this.loiKhuyen = loiKhuyen;
    }
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    @Column(name = "id_doctor")
    private int doctorId;
    @Column(name = "id_patient")
    private int patientId;
    @Column(name = "ngaykham")
    private String ngayKham;
    private String chuanDoan;
    private boolean active;
    @Column(name = "lichuongthuoc")
    private String lichThuoc;
    @Column(name = "loikhuyen")
    private String loiKhuyen;
}
