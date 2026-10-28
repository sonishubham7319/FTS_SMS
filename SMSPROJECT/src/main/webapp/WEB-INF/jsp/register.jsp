<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- bootstrap css -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts & FontAwesome Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">
    <!-- font awesome icon -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.3.1/css/all.min.css" rel="stylesheet">
    <!-- bootstrap js -->
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
     
    <title>Register</title>
   <style>
        :root {
            --bg-color: #f2f4f1;
            --card-bg: #ffffff;
            --primary-color: #555c45;
            --primary-hover: #434a36;
            --input-bg: #f5f6f2;
            --input-border: #e2e5dc;
            --text-dark: #2b2e25;
            --text-muted: #828778;
            --inner-card-bg: #f9faf7;
            --inner-card-border: #e6e9e0;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Plus Jakarta Sans', sans-serif;
        }

        body {
            background-color: var(--bg-color);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 20px;
            
        }

        .register-card {
            background: var(--card-bg);
            width: 100%;
            max-width: 420px;
            border-radius: 24px;
            padding: 25px 20px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.05);
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        /* Logo Icon Box */
        .logo-box {
            width: 64px;
            height: 64px;
            background-color: var(--primary-color);
            border-radius: 16px;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-bottom: 13px;
            color: #ffffff;
            font-size: 28px;
        } 

        /* Titles */
        .portal-title {
            font-size: 24px;
            font-weight: 700;
            color: var(--text-dark);
            text-align: center;
            margin-bottom: 6px;
        }

        .portal-subtitle {
            font-size: 11px;
            font-weight: 700;
            letter-spacing: 1.5px;
            color: var(--text-muted);
            text-transform: uppercase;
            text-align: center;
            margin-bottom: 25px;
        }  

        /* Form Layout */
        .register-form {
            width: 100%;
        }

        .form-row {
            display: flex;
            gap: 16px;
            margin-bottom: 10px;
        }

        .form-group {
            flex: 1;
            display: flex;
            flex-direction: column;
        }

        .form-label {
            font-size: 11px;
            font-weight: 700;
            letter-spacing: 1px;
            color: var(--text-muted);
            text-transform: uppercase;
            margin-bottom: 5px;
        }

        .form-input, .form-select {
            width: 100%;
            height: 30px;
            background-color: var(--input-bg);
            border: 1px solid var(--input-border);
            border-radius: 12px;
            padding: 0 10px;
            font-size: 14px;
            color: var(--text-dark);
            outline: none;
            transition: all 0.2s ease;
        }

        .form-input:focus, .form-select:focus {
            border-color: var(--primary-color);
            background-color: #ffffff;
        }

        .form-input::placeholder {
            color: #a4a89c;
        }

        /* Role Switcher Toggle */
        .role-switcher {
            display: flex;
            background-color: var(--input-bg);
            border: 1px solid var(--input-border);
            border-radius: 12px;
            padding: 4px;
           height: 30px;
        }

        .role-btn {
            flex: 1;
            border: none;
            background: transparent;
            font-size: 13px;
            font-weight: 600;
            color: var(--text-muted);
            border-radius: 8px;
            cursor: pointer;
            transition: all 0.2s ease;
        }

        .role-btn.active {
            background-color: var(--primary-color);
            color: #ffffff;
        }

        /* Student Particulars Card Section */
        .student-section {
            background-color: var(--inner-card-bg);
            border: 1px solid var(--inner-card-border);
            border-radius: 16px;
            padding: 20px;
            margin-bottom: 10px;
        }

        .section-title {
            font-size: 11px;
            font-weight: 700;
            letter-spacing: 1px;
            color: var(--text-muted);
            text-transform: uppercase;
            margin-bottom: 8px;
        }

        /* Buttons */
        .btn-submit {
            width: 100%;
            /* height: 50px; */
            height: 35px;
            background-color: var(--primary-color);
            color: #ffffff;
            border: none;
            border-radius: 12px;
            font-size: 15px;
            font-weight: 600;
            cursor: pointer;
            margin-top: 6px;
            transition: background-color 0.2s ease;
        }

        .btn-submit:hover {
            background-color: var(--primary-hover);
        }

        /* Sign In Link */
        .login-text {
            text-align: center;
            margin-top: 15px;
            font-size: 13px;
            color: var(--text-muted);
        }

        .login-text a {
            color: var(--text-dark);
            font-weight: 600;
            text-decoration: none;
        }

        .login-text a:hover {
            text-decoration: underline;
        }

        /* Footer */
        .card-footer {
            margin-top: 10px;
            padding-top: 16px;
            border-top: 1px solid #eef0eb;
            width: 100%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            font-size: 11px;
            color: var(--text-muted);
        }
    </style>
   
</head>
<body>
    <div class="register-card">
        <!-- Logo Header -->
        <div class="logo-box">
            <i class="fa-solid fa-graduation-cap"></i>
        </div>
        <h1 class="portal-title">School Management System</h1>
        <p class="portal-subtitle">PORTAL REGISTRATION</p>

        <!-- Form Start -->
        <form class="register-form" action="/registerData" method="POST" id="registerForm">
            
            <!-- Row 1: Role & Username -->
            <div class="form-row">
                <div class="form-group">
                    <label class="form-label">PORTAL ROLE</label>
                    <div class="role-switcher">
                        <button type="button" class="role-btn active" id="btnStudent" onclick="setRole('Student')">Student</button>
                        <button type="button" class="role-btn" id="btnTeacher" onclick="setRole('Teacher')">Teacher</button>
                    </div>
                    <input type="hidden" name="role" id="roleInput" value="role">
                </div>

                <div class="form-group">
                    <label class="form-label" for="username">USERNAME</label>
                    <input type="text" id="username" name="username" class="form-input" placeholder="e.g. alex_m" required>
                     <span id="usernameError" style="color: red; display: none;">please enter userName</span>
                </div>
            </div>

            <!-- Row 2: Full Name & Email -->
            <div class="form-row">

                 <div class="form-group">
                    <label class="form-label" for="email">EMAIL ADDRESS</label>
                    <input type="email" id="email" name="email" class="form-input" placeholder="e.g. name@school.edu" required>
                    <span id="emailError" style="color: red; display: none;">please enter email</span>
                </div>
                
                <div class="form-group">
                    <label class="form-label" for="fullName">FULL NAME</label>
                    <input type="text" id="fullName" name="fullName" class="form-input" placeholder="e.g. Alexander Mercer" required>
                    <span id="fullNameError" style="color: red; display: none;">please enter fullName</span>
                </div>

                <!-- <div class="form-group">
                    <label class="form-label" for="email">EMAIL ADDRESS</label>
                    <input type="email" id="email" name="email" class="form-input" placeholder="e.g. name@school.edu" required>
                </div> -->
            </div>

            <!-- Row 3: Password & Phone -->
            <div class="form-row">
                <div class="form-group">
                    <label class="form-label" for="password">PASSWORD</label>
                    <input type="password" id="password" name="passwordHash" class="form-input" placeholder="At least 6 chars" minlength="6" required>
                    <span id="passwordError" style="color: red; display: none;">please enter password</span>
                </div>

                <div class="form-group">
                    <label class="form-label" for="phone">PHONE NUMBER</label>
                    <input type="tel" id="phone" name="phone" class="form-input" placeholder="nter phone Number">
                    <span id="phoneError" style="color: red; display: none;">please enter phoneNo</span>
                </div>
            </div>

            <!-- Student Particulars Box -->
            <div class="student-section" id="studentParticulars">
                <div class="section-title">STUDENT PARTICULARS</div>
                
                <div class="form-row">
                    <div class="form-group">
                        <label class="form-label" for="studentClass">CLASS</label>
                        <select id="studentClass" name="studentClass" class="form-select">
                            <option value="Class 10">Class 10</option>
                            <option value="Class 11">Class 11</option>
                            <option value="Class 12">Class 12</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label class="form-label" for="section">SECTION</label>
                        <select id="section" name="section" class="form-select">
                            <option value="Sec A">Sec A</option>
                            <option value="Sec B">Sec B</option>
                            <option value="Sec C">Sec C</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label class="form-label" for="rollNo">ROLL NO</label>
                        <input type="text" id="rollNo" name="rollNo" class="form-input" placeholder="e.g. 15">
                        <span id="RollNoError" style="color: red; display: none;">please enter RollNo</span>
                    </div>
                </div>

                <div class="form-row" style="margin-bottom: 0;">
                    <div class="form-group">
                        <label class="form-label" for="fatherName">FATHER'S NAME</label>
                        <input type="text" id="fatherName" name="fatherName" class="form-input" placeholder="Father's full name">
                        <span id="fatherError" style="color: red; display: none;">please enter father's Name</span>
                    </div>

                    <div class="form-group">
                        <label class="form-label" for="motherName">MOTHER'S NAME</label>
                        <input type="text" id="motherName" name="motherName" class="form-input" placeholder="Mother's full name">
                        <span id="motherError" style="color: red; display: none;">please enter mother's Name</span>
                    </div>
                </div>
            </div>

            <!-- Submit Button -->
            <button type="submit" class="btn-submit">Create Account & Sign In</button>

            <!-- Back to Login Link -->
            <div class="login-text">
                Already have an account? <a href="${PageContext.request.contextPath}/">Sign In</a>
            </div>

            <!-- Footer Section -->
            <div class="card-footer">
                <span>Security Protocol: FTS</span>
                <span>School Management System © 2026</span>
            </div>

        </form>
    </div>

    <!-- Dynamic Role Switcher Script -->
    <script>
        function setRole(role) {
            const btnStudent = document.getElementById('btnStudent');
            const btnTeacher = document.getElementById('btnTeacher');
            const roleInput = document.getElementById('roleInput');
            const studentSection = document.getElementById('studentParticulars');

            roleInput.value = role;

            if (role === 'Student') {
                btnStudent.classList.add('active');
                btnTeacher.classList.remove('active');
                studentSection.style.display = 'block';
                 document.getElementById('studentClass').disabled = false;
                document.getElementById('section').disabled = false;
                document.getElementById('rollNo').disabled = false;
            } else {
                btnTeacher.classList.add('active');
                btnStudent.classList.remove('active');
                studentSection.style.display = 'none';
                document.getElementById('studentClass').disabled = true;
                document.getElementById('section').disabled = true;
                document.getElementById('rollNo').disabled = true;
            }
        }
    </script>
   <!-- registraction form validation -->
    <script>
        document.getElementById('registerForm').addEventListener('submit',function(event){
             let isValid = true;
             //username input validation
          const usernameInput = document.getElementById('username');
        const usernameError = document.getElementById('usernameError');
        usernameInput.addEventListener('input', function() {
            if (usernameInput.value.trim() !== '') {
                usernameError.style.display = 'none';
            }
        });

          //email input validation
          const emailInput = document.getElementById('email');
        const emailError = document.getElementById('emailError');
        emailInput.addEventListener('input', function() {
            if (emailInput.value.trim() !== '') {
                emailError.style.display = 'none';
            }
        });

        
          //fullName input validation
          const fullNameInput = document.getElementById('fullName');
        const fullNameError = document.getElementById('fullNameError');
        fullNameInput.addEventListener('input', function() {
            if (fullNameInput.value.trim() !== '') {
                fullNameError.style.display = 'none';
            }
        });

          //password input validation
          const passwordInput = document.getElementById('password');
        const passwordError = document.getElementById('passwordError');
        passwordInput.addEventListener('input', function() {
            if (passwordInput.value.trim() !== '') {
                passwordError.style.display = 'none';
            }
        });

         //phone input validation
          const phoneInput = document.getElementById('phone');
        const phoneError = document.getElementById('phoneError');
        phoneInput.addEventListener('input', function() {
            if (phoneInput.value.trim() !== '') {
                phoneError.style.display = 'none';
            }
        });

          //RollNo input validation
          const RollNoInput = document.getElementById('rollNo');
        const RollNoError = document.getElementById('RollNoError');
        RollNoInput.addEventListener('input', function() {
            if (RollNoInput.value.trim() !== '') {
                RollNoError.style.display = 'none';
            }
        });

           //father input validation
          const fatherInput = document.getElementById('fatherName');
        const fatherError = document.getElementById('fatherError');
        fatherInput.addEventListener('input', function() {
            if (fatherInput.value.trim() !== '') {
                fatherError.style.display = 'none';
            }
        });

         //father input validation
          const motherInput = document.getElementById('motherName');
        const motherError = document.getElementById('motherError');
        motherInput.addEventListener('input', function() {
            if (motherInput.value.trim() !== '') {
                motherError.style.display = 'none';
            }
        });
        });
    </script>
  
</body>
</html>