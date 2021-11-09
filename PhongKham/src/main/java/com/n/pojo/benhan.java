/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author ADMIN
 */
@Entity
@Table(name="prescription")
public class benhan {

    /**
     * @return the lichuongthuoc
     */
    public String getLichuongthuoc() {
        return lichuongthuoc;
    }

    /**
     * @param lichuongthuoc the lichuongthuoc to set
     */
    public void setLichuongthuoc(String lichuongthuoc) {
        this.lichuongthuoc = lichuongthuoc;
    }

    /**
     * @return the loikhuyen
     */
    public String getLoikhuyen() {
        return loikhuyen;
    }

    /**
     * @param loikhuyen the loikhuyen to set
     */
    public void setLoikhuyen(String loikhuyen) {
        this.loikhuyen = loikhuyen;
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
     * @return the id_doctor
     */
    public int getId_doctor() {
        return id_doctor;
    }

    /**
     * @param id_doctor the id_doctor to set
     */
    public void setId_doctor(int id_doctor) {
        this.id_doctor = id_doctor;
    }

    /**
     * @return the id_patient
     */
    public int getId_patient() {
        return id_patient;
    }

    /**
     * @param id_patient the id_patient to set
     */
    public void setId_patient(int id_patient) {
        this.id_patient = id_patient;
    }

    /**
     * @return the ngaykham
     */
    public String getNgaykham() {
        return ngaykham;
    }

    /**
     * @param ngaykham the ngaykham to set
     */
    public void setNgaykham(String ngaykham) {
        this.ngaykham = ngaykham;
    }

    /**
     * @return the chuandoan
     */
    public String getChuandoan() {
        return chuandoan;
    }

    /**
     * @param chuandoan the chuandoan to set
     */
    public void setChuandoan(String chuandoan) {
        this.chuandoan = chuandoan;
    }
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private int id_doctor;
    private int id_patient;
    private String ngaykham;
    private String chuandoan;
    private String lichuongthuoc;
    private String loikhuyen;
    private boolean active;
}
