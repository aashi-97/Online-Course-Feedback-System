package com.example.demo.services;

import com.example.demo.Repository.AdminRepository;
import com.example.demo.model.Admin;
import com.example.demo.model.User;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Service
@Transactional
public class AdminService {
    private final AdminRepository adminRepository;

    public AdminService(AdminRepository adminRepository){
        this.adminRepository= adminRepository;
    }

    public void saveAdmin(Admin admin){
        adminRepository.save(admin);
    }

    public Admin findByEmailAndPassword(String email, String password){
        return adminRepository.findByEmailAndPassword(email,password);
    }
}


