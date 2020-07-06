package com.example.demo.services;

import com.example.demo.Repository.DepartmentRepository;
import com.example.demo.model.Course;
import com.example.demo.model.Department;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DepartmentService {

    @Autowired
    DepartmentRepository departmentRepository;

    public List<Department> findAll(){
        List<Department> departments;
        departments = departmentRepository.findAll();
        return departments;
    }

    public Department findById(long dept_id){
        Department department=departmentRepository.findById(dept_id).orElse(null);
        return department;
    }

}
