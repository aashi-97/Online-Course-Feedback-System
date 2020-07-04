package com.example.demo.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.sun.istack.NotNull;
import org.hibernate.annotations.Proxy;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

@Entity
@Proxy(lazy=false)
@Table(name="user")
public class User implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long userId;
    @Column
    @NotNull
    private String username;

    @Column
    @NotNull
    private String rollnumber;

    @Column
    @NotNull
    private String programme;

    @Column
    @NotNull
    private String department;
    @Column
    @NotNull
    private String email;

    @Column
    @NotNull
    private String semester;

    @Column
    @NotNull
    private String password;

    @JsonIgnore
    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    private List<Result> result;

    public User(){

    }


    public User(String username, String rollnumber, String programme, String department, String email, String semester, String password) {
        this.username = username;
        this.rollnumber = rollnumber;
        this.programme = programme;
        this.department = department;
        this.email = email;
        this.semester = semester;
        this.password = password;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long user_id) {
        this.userId = user_id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getRollnumber() {
        return rollnumber;
    }

    public void setRollnumber(String rollnumber) {
        this.rollnumber = rollnumber;
    }

    public String getProgramme() {
        return programme;
    }

    public void setProgramme(String programme) {
        this.programme = programme;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSemester() {
        return semester;
    }

    public void setSemester(String semester) {
        this.semester = semester;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public List<Result> getResult() {
        return result;
    }

    public void setResult(List<Result> result) {
        this.result = result;
    }

    @Override
    public String toString() {
        return "User{" +
                "userId=" + userId +
                ", username='" + username + '\'' +
                ", rollnumber='" + rollnumber + '\'' +
                ", programme='" + programme + '\'' +
                ", department='" + department + '\'' +
                ", email='" + email + '\'' +
                ", semester='" + semester + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}

