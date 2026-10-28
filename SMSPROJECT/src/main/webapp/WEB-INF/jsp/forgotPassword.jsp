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
     
    <title>Forgot</title>
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
        }
        *{
          margin: 0;
          padding: 0;
          box-sizing: border-box;
          font-family: 'Plus Jakarta Sans',sans-serif;
        }
           body {
            background-color: var(--bg-color);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 20px;
        }
        .login-card{
          background-color: var(--card-bg);
          width: 100%;
          max-width: 420px;
          border-radius: 24px;
          padding: 40px 32px;
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
            margin-bottom: 24px;
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
        /* subtitle */
          .portal-subtitle {
            font-size: 11px;
            font-weight: 700;
            letter-spacing: 1.5px;
            color: var(--text-muted);
            text-transform: uppercase;
            text-align: center;
            margin-bottom: 32px;
        }
        /* Form Controls */
        .login-form {
            width: 100%;
        }
           .form-group {
            margin-bottom: 20px;
        }
          .form-label {
            display: block;
            font-size: 11px;
            font-weight: 700;
            letter-spacing: 1px;
            color: var(--text-muted);
            text-transform: uppercase;
            margin-bottom: 8px;
        }
          .input-wrapper {
            position: relative;
            display: flex;
            align-items: center;
        }
         .form-input {
            width: 100%;
            height: 48px;
            background-color: var(--input-bg);
            border: 1px solid var(--input-border);
            border-radius: 12px;
            padding: 0 16px;
            font-size: 15px;
            color: var(--text-dark);
            outline: none;
            transition: all 0.2s ease;
        }
           .form-input:focus {
            border-color: var(--primary-color);
            background-color: #ffffff;
        }
          /* Password Toggle Eye Icon */
        .toggle-password {
            position: absolute;
            right: 14px;
            background: none;
            border: none;
            color: var(--text-muted);
            cursor: pointer;
            font-size: 16px;
            padding: 4px;
        }
           .toggle-password:hover {
            color: var(--text-dark);
        }
              /* Sign In Button */
        .btn-submit {
            width: 100%;
            height: 50px;
            background-color: var(--primary-color);
            color: #ffffff;
            border: none;
            border-radius: 12px;
            font-size: 15px;
            font-weight: 600;
            cursor: pointer;
            margin-top: 10px;
            transition: background-color 0.2s ease;
        }
             .btn-submit:hover {
            background-color: var(--primary-hover);
        }
           /* Create Account Link */
        .register-text {
            text-align: center;
            margin-top: 24px;
            font-size: 13px;
            color: var(--text-muted);
        }
           .register-text a {
            color: var(--text-dark);
            font-weight: 600;
            text-decoration: none;
        }
          .register-text a:hover {
            text-decoration: underline;
        }
         /* Footer */
        .card-footer {
            margin-top: 36px;
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
   <div class="login-card">
    <!-- Header logo -->
     <div class="logo-box">
      <i class="fa-solid fa-graduation-cap"></i>
     </div>
     <!-- Header Text -->
      <h1 class="portal-title">School Management System</h1>
      <p class="portal-subtitle">UNIFIED STUDENT & FACULTY PORTAL</p>
      <!-- Login form -->
       <form class="login-form" action="updatePassword" method="post">

        <div class="form-group">
          <label class="form-label" for="username">USERNAME</label>
          <div class="input-wrapper">
            <input type="text" id="username" name="username" class="form-input" placeholder="student">
             <!-- <span id="errorUserName" style="color: red;"><small>Please enter userName</small></span> -->
             <!-- <c:if test="${not empty errorMessage}"><small style="color: red; text-align: center;">${errorMessage}</small></c:if> -->
          </div>
          <span id="errorUserName" style="color: red; display: none;"><small>Please enter userName</small></span>
          <!-- <c:if test="${not empty errorMessageUserName}"><small style="color: red; text-align: center;">${errorMessageUserName}</small></c:if> -->
        </div>

         <div class="form-group">
          <label class="form-label" for="password">PASSWORD</label>
          <div class="input-wrapper">
            <input type="password" id="password" name="password" class="form-input">
            <!-- <span id="errorPassword" style="color: red;"><small>enter password</small></span> -->
                <!-- <c:if test="${not empty errorMessage}"><small style="color: red; text-align: center;">${errorMessage}</small></c:if> -->
            <button type="button" class="toggle-password" id="togglePassword">
              <i class="fa-regular fa-eye"></i>
            </button>
          </div>
           <span id="errorPassword" style="color: red; display: none;"><small>enter password</small></span>
          <!-- <c:if test="${not empty errorMessage}"><small style="color: red; text-align: center;">${errorMessage}</small></c:if> -->
        </div>

        <div class="form-group">
          <label class="form-label" for="confirmPassword">Confirm Password</label>
          <div class="input-wrapper">
            <input type="password" id="confirmPassword" name="confirmPassword" class="form-input">
             <!-- <span id="errorConfirmPassword" style="color: red;"><small> enter Confirm password</small></span> -->
                <!-- <c:if test="${not empty errorMessage}"><small style="color: red; text-align: center;">${errorMessage}</small></c:if> -->
            <button type="button" class="toggle-password" id="toggleConfirmPassword">
              <i class="fa-regular fa-eye"></i>
            </button>
          </div>
          <span id="errorConfirmPassword" style="color: red; display: none;"><small> enter Confirm password</small></span>
          <!-- <c:if test="${not empty errorMessage}"><small style="color: red; text-align: center;">${errorMessage}</small></c:if> -->
        </div>

        <button type="submit" class="btn-submit" onclick="return forgetPassword()">Update</button>

        <div class="register-text">Don't have an account? <a href="${PageContext.request.contextPath}/register">Create one now</a></div>

        <!-- Footer Section -->
         <div class="card-footer">
          <span>Security Protocol: FTS</span>
          <span>School Management System @ 2026</span>
         </div>

       </form>
   </div>

   <!-- Password Hide/Show Script -->
     <script>
        const togglePassword = document.querySelector('#togglePassword');
        const password = document.querySelector('#password');
         const confirmPassword = document.querySelector('#confirmPassword');
        const toggleConfirmPassword = document.querySelector('#toggleConfirmPassword');

        togglePassword.addEventListener('click', function () {
            const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
            password.setAttribute('type', type);
            
            // Toggle eye icon
            const icon = this.querySelector('i');
            icon.classList.toggle('fa-eye');
            icon.classList.toggle('fa-eye-slash');
        });

        toggleConfirmPassword.addEventListener('click', function () {
            const type = confirmPassword.getAttribute('type') === 'password' ? 'text' : 'password';
            confirmPassword.setAttribute('type', type);
            
            // Toggle eye icon
            const icon = this.querySelector('i');
            icon.classList.toggle('fa-eye');
            icon.classList.toggle('fa-eye-slash');
        });
    </script>
<!-- password and confirmPassword ke liye js condition -->
     <script>
                function forgetPassword(){
                    let userName = document.getElementById("username").value.trime();
                    let erroruserName = document.getElementById("errorUserName");

                    let newPassword = document.getElementById("password").value.trim();
                    let errorPassword = document.getElementById("errorPassword");

                    let confirmPassword = document.getElementById("confirmPassword").value.trime();
                    let errorConfirmPassword = document.getElementById("errorConfirmPassword");
//username ke liye error message
                    if(userName== ""){
                        erroruserName.style.display="block";
                        return false;
                    }
                    else{
                        erroruserName.style.display="none";
                    }
//newPassword ke liye  error message
                     if(newPassword== ""){
                        errorPassword.style.display="block";
                        return false;
                    }
                    else{
                        errorPassword.style.display="none";
                    }

 //confirmPassword ke liye  error message
                     if(confirmPassword== ""){
                        errorConfirmPassword.style.display="block";
                        return false;
                    }
                    else{
                        errorConfirmPassword.style.display="none";
                    }
                    if(newPassword !==confirmPassword){
                        alert("password do not match");
                        return false;
                    }
                    return true;
                }
                console.log("Validation function called");
             </script>
</body>
</html>