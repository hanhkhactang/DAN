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
@Table(name="tam")
public class tam {

    /**
     * @return the tam
     */
    public int getTam() {
        return tam;
    }

    /**
     * @param tam the tam to set
     */
    public void setTam(int tam) {
        this.tam = tam;
    }
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int tam;
}
