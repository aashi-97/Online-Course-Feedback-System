package com.example.demo.services;

import com.example.demo.Repository.AdminRepository;
import com.example.demo.model.Admin;
import com.example.demo.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class AdminService {

    @Autowired
    AdminRepository adminRepository;

    public void save(Admin admin){
        adminRepository.save(admin);
    }

    public List<Admin> findAll(){
        List<Admin> admin;
        admin =adminRepository.findAll() ;
        return admin;
    }

    public Admin findById(int admin_id){
        Admin admin = adminRepository.findById(admin_id).orElse(null);
        return admin;
    }

}


