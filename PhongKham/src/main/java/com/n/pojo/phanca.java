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
@Table(name="phanca")
public class phanca {

    /**
     * @return the thu
     */
    public int getThu() {
        return thu;
    }

    /**
     * @param thu the thu to set
     */
    public void setThu(int thu) {
        this.thu = thu;
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
     * @return the id_nurse
     */
    public int getId_nurse() {
        return id_nurse;
    }

    /**
     * @param id_nurse the id_nurse to set
     */
    public void setId_nurse(int id_nurse) {
        this.id_nurse = id_nurse;
    }
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int thu;
    private int id_doctor;
    private int id_nurse;
    
}
