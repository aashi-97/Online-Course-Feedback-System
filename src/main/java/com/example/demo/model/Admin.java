package com.example.demo.model;

import com.sun.istack.NotNull;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name="admin")
public class Admin implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int adminId;

    @Column
    @NotNull
    private String email;

    @Column
    @NotNull
    private String password;

    public Admin(){

    }

    public Admin(String email, String password) {
        this.email = email;
        this.password = password;
    }

    public int getAdminId() {
        return adminId;
    }

    public void setAdminId(int admin_id) {
        this.adminId = admin_id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "admin{" +
                "adminId=" + adminId +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}


