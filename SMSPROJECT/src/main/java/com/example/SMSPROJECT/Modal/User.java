package com.example.SMSPROJECT.Modal;

import java.time.LocalDateTime;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;

@Entity 
@Table (name = "user")
public class User {
    @Id 
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    private Long id;
    private String role;
    private String username;
    private String email;
    private String fullName;
    @CreationTimestamp 
    private LocalDateTime createdAt;
    private String passwordHash;
    private String phone;
    private String studentClass;
    private String section;
    private String rollNo;
    private String fatherName;
    private String motherName;
    private String admissionNo;

      //getter & setter
    public Long getId() {
        return id;
    }
    public void setId(Long id) {
        this.id = id;
    }
    public String getRole() {
        return role;
    }
    public void setRole(String role) {
        this.role = role;
    }
    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getFullName() {
        return fullName;
    }
    public void setFullName(String fullName) {
        this.fullName = fullName;
    }
    public LocalDateTime getCreatedAt() {
        return createdAt;
    }
    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }
    public String getPasswordHash() {
        return passwordHash;
    }
    public void setPasswordHash(String passwordHash) {
        this.passwordHash = passwordHash;
    }
    public String getPhone() {
        return phone;
    }
    public void setPhone(String phone) {
        this.phone = phone;
    }
    public String getStudentClass() {
        return studentClass;
    }
    public void setStudentClass(String studentClass) {
        this.studentClass = studentClass;
    }
    public String getSection() {
        return section;
    }
    public void setSection(String section) {
        this.section = section;
    }
    public String getRollNo() {
        return rollNo;
    }
    public void setRollNo(String rollNo) {
        this.rollNo = rollNo;
    }
    public String getFatherName() {
        return fatherName;
    }
    public void setFatherName(String fatherName) {
        this.fatherName = fatherName;
    }
    public String getMotherName() {
        return motherName;
    }
    public void setMotherName(String motherName) {
        this.motherName = motherName;
    }
    public String getAdmissionNo() {
        return admissionNo;
    }
    public void setAdmissionNo(String admissionNo) {
        this.admissionNo = admissionNo;
    }
    //constractor
    public User(Long id, String role, String username, String email, String fullName, LocalDateTime createdAt,
            String passwordHash, String phone, String studentClass, String section, String rollNo, String fatherName,
            String motherName, String admissionNo) {
        this.id = id;
        this.role = role;
        this.username = username;
        this.email = email;
        this.fullName = fullName;
        this.createdAt = createdAt;
        this.passwordHash = passwordHash;
        this.phone = phone;
        this.studentClass = studentClass;
        this.section = section;
        this.rollNo = rollNo;
        this.fatherName = fatherName;
        this.motherName = motherName;
        this.admissionNo = admissionNo;
    }
    //empty constractor
    public User(){

    }
    //toString
    @Override
    public String toString() {
        return "User [id=" + id + ", role=" + role + ", username=" + username + ", email=" + email + ", fullName="
                + fullName + ", createdAt=" + createdAt + ", passwordHash=" + passwordHash + ", phone=" + phone
                + ", studentClass=" + studentClass + ", section=" + section + ", rollNo=" + rollNo + ", fatherName="
                + fatherName + ", motherName=" + motherName + ", admissionNo=" + admissionNo + "]";
    }
    
   
    }

 
    
    

