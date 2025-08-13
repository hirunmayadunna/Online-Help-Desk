<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<link rel="stylesheet" href="logincss.css">
    <style>
        body {  /* Add background photo using CSS */ 
            background-image: url('images/loginbg.jpg');
            background-size: cover;
            background-position: center;
        }

        .error-message {
            color: #fff;         
            background-color: #e74c3c; 
            font-size: 16px;      
            padding: 15px 20px;  
            border-radius: 5px;  
            position: fixed;      
            top: 720px;            
            left: 50%;            
            transform: translate(-50%, -50%); /*center*/
            z-index: 9999;   /*put on top of everything*/
        }
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
    left: 55px;
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

.form a {  /*links color*/
    color: #0171d3 ;
    text-decoration: none;
}

.form-content a:hover { /*links hover*/
    text-decoration: underline; 
}

.line {
    position: relative;
    height: 1px;
    width: 100%;
    margin: 36px 0;
    background-color: #fff;
}

.space {
    margin-top: 20px;
}
        
    </style>
</head>

<body>
<div class="s-system">Student Login</div>
<br>
<section class="container forms">
    <div class="form login">
        <div class="form-content">

            <img src="images/signinlogo.png" alt="" class="profilelogo">
            <header>Log in</header>

            <form action="LoginServelet" method="POST">

                <div class="field-input-field">
                    <h3>Email </h3>
                    <input type="email" placeholder="john@gmail.com" class="email" name="email" required>
                    <h3>Password </h3>
                    <input type="password" placeholder="********" class="password" name="password" required>
                </div>

                <div class="form-link">
                    <a href="forgotpassword.jsp" class="forget-pass">Forgot Password?</a>
                </div>

                <div class="space"></div> <!--space-->
                            
                <div class="field button-field">
                   <button>Login</button>
                </div>

                <div class="line"></div>

                <div class="space"></div> <!--space-->

                <div class="form-link">
                    <span>Don't have an account? <a href="signup.jsp" class="signup-link">Signup</a></span>
                </div>
                <br>
            </form>
               			 
            <div class="field button-field">
                    <a href="adminlogin.jsp"><button>Admin Portal</button></a>
                </div>
        </div>
    </div>
</section> 
</body>
</html>