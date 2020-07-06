package com.example.demo.model;

import com.sun.istack.NotNull;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "department")
public class Department implements Serializable {

    @Id
    private long deptId;

    @Column
    @NotNull
    private String deptname;

    public Department(){

    }

    public Department(long deptId, String deptname) {
        this.deptId = deptId;
        this.deptname = deptname;
    }

    public long getDeptId() {
        return deptId;
    }

    public void setDeptId(long deptId) {
        this.deptId = deptId;
    }

    public String getDeptname() {
        return deptname;
    }

    public void setDeptname(String deptname) {
        this.deptname = deptname;
    }

    @Override
    public String toString() {
        return "Department{" +
                "deptId=" + deptId +
                ", deptname='" + deptname + '\'' +
                '}';
    }
}
