package com.example.demo.Repository;

import com.example.demo.model.User;
import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository<User, Integer> {
    public User findByUsernameAndPassword(String username, String password);
}
