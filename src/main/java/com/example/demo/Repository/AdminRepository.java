package com.example.demo.Repository;

import com.example.demo.model.Admin;
import org.springframework.data.repository.CrudRepository;

public interface AdminRepository extends CrudRepository<Admin, Integer> {
    public Admin findByEmailAndPassword(String email, String password);
}
