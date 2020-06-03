package com.example.demo.model;

import javax.persistence.Entity;
import javax.persistence.GenerationType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="user")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String username;
    private int rollnumber;
    private String password;

    public User(){

    }

    public User(String username, int rollnumber, String password) {
        super();
        this.username = username;
        this.rollnumber = rollnumber;
        this.password = password;
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

    public int getRollnumber() {
        return rollnumber;
    }

    public void setRollnumber(int rollnumber) {
        this.rollnumber = rollnumber;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", rollnumber=" + rollnumber +
                ", password='" + password + '\'' +
                '}';
    }
}

