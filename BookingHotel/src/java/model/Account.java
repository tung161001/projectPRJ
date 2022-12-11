/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author dell
 */
public class Account {

    int id;
    String username;
    String password;
    String phone;
    String identityCart;
    Date ceateAt;

    public Account(int id, String username, String password) {
        this.id = id;
        this.username = username;
        this.password = password;
    }

    public Account(int id, String username, String password, String phone, String identityCart, Date ceateAt) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.phone = phone;
        this.identityCart = identityCart;
        this.ceateAt = ceateAt;
    }


    public Account(int id, String username, String password, String phone, String identityCart) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.phone = phone;
        this.identityCart = identityCart;
    }

    @Override
    public String toString() {
        return "Account{" + "id=" + id + ", username=" + username + ", password=" + password + ", phone=" + phone + ", identityCart=" + identityCart + ", ceateAt=" + ceateAt + '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public Date getCeateAt() {
        return ceateAt;
    }

    public void setCeateAt(Date ceateAt) {
        this.ceateAt = ceateAt;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getIdentityCart() {
        return identityCart;
    }

    public void setIdentityCart(String identityCart) {
        this.identityCart = identityCart;
    }
}
