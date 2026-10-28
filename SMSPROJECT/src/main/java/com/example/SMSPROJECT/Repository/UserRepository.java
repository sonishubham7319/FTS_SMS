package com.example.SMSPROJECT.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.example.SMSPROJECT.Modal.User;

@Repository 
public interface UserRepository extends JpaRepository<User,Long>{
    User findByusername(String username);
    
}
