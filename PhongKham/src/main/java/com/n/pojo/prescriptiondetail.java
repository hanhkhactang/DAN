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
 * @author caoth
 */
@Entity
@Table(name="prescription details")
public class prescriptiondetail {

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
     * @return the idbenhan
     */
    public int getIdbenhan() {
        return idbenhan;
    }

    /**
     * @param idbenhan the idbenhan to set
     */
    public void setIdbenhan(int idbenhan) {
        this.idbenhan = idbenhan;
    }

    /**
     * @return the idmedicine
     */
    public int getIdmedicine() {
        return idmedicine;
    }

    /**
     * @param idmedicine the idmedicine to set
     */
    public void setIdmedicine(int idmedicine) {
        this.idmedicine = idmedicine;
    }

    /**
     * @return the soluong
     */
    public int getSoluong() {
        return soluong;
    }

    /**
     * @param soluong the soluong to set
     */
    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private int idbenhan;
    private int idmedicine;
    private int soluong;
}