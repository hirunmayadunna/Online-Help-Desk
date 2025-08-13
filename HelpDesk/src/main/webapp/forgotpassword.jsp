<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Change Password</title>
    <link rel="stylesheet" href="css/signup.css">
    <script src ="js/signup.js"></script>
    <style>
        body {  /* Add background photo using CSS */ 
            background-image: url('images/loginbg.jpg');
            background-size: cover;
            background-position: center;
            
            * {
    font-family: "Poppins", sans-serif;  
    margin: 0;
    padding: 0;
    box-sizing: border-box; 
}

.s-system {
    display: flex;
    justify-content: center;
    align-items: center;
    position: relative;
    margin-top: 10px;
    color: #181717;
    font-size: 47px; 
    font-weight: 900; 
    text-shadow: 3px 3px 6px rgba(0, 0, 0, 0.5); /*shadow effect */
    z-index: 999;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    letter-spacing: 3px; 
    line-height: 1.2;
    text-transform: uppercase;
}

.profilelogo {
    height: 120px;
    width: 120px;
    position: relative;
    left: 50px;
}    

.container {
    height: 100vh;
    width: 100%;
    display: flex;
    align-items: center;
    justify-content: center; 
}

.form {
    position: relative;
    max-width: 430px;
    padding: 60px;
    border-radius: 6px;
    align-items: center;
    justify-content: center;
    background-color: #adcbd8; 
}

header {
    font-family: 'Times New Roman', Times, serif;
    text-align: center;
    font-weight: 600;
    color: rgb(7, 14, 59);
    font-size: 30px;
}

.field-input-field input[type="password"],  
.field-input-field input[type="email"] {
    width: calc(100% - 13px);
    padding: 8px;
    margin: 0 auto;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 10px;   
}

.field button { /*login button*/   
    height: 35px; /* Adjust height as needed */
    width: 100%; /* Make button full width */
    border: none;
    font-size: 16px;
    font-weight: 500;
    border-radius: 6px;
    color: #0b0b0b;
    background-color: #04AA6D;
    transition: all 0.3s ease;
    cursor: pointer;
}

.field button:hover {
    color: #fff;
    background-color: #343434;
}

.space {
    margin-top: 20px;
}
            
        }
    </style>
</head>

<body>
<div class="s-system"> Change Password</div>
<section class="container forms">
    <div class="form signup">
        <div class="form-content">

            <img src="images/signinlogo.png" alt="" class="profilelogo">
            <header>Change Password</header>
			<br>
            <form action="forgetpassword" method="POST">

                <div class="field-input-field">
                	 <h3>Email</h3>
                    <input type="email" placeholder="john@gmail.com" class="email" name="email"  required >
                    <h3>Password</h3>
                    <input type="password" placeholder="********" class="password"  name="password" required >
                    <h3>Confirm Password</h3>
                    <input type="password" placeholder="********" class="confirm-password"  name="confirmpassword"  required>
                </div>

                <div class="space "></div> <!--space-->
                <div class="space"></div> <!--space-->

                <div class="field button-field">
                    <button type="submit">Confirm</button>
                </div>
                
                <div class="space"></div> <!--space-->

            </form>
        </div>
    </div>
</section> 
</body>
</html>