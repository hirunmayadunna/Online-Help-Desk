<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Sign Up</title>
    <link rel="stylesheet" href="css/signup.css">
    <script src ="js/signup.js"></script>
    <style>
        body {  /* Add background photo using CSS */ 
            background-image: url('images/loginbg.jpg');
            background-size: cover;
            background-position: center;
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
    left: 105px;
}    

header {
    font-family: 'Times New Roman', Times, serif;
    text-align: center;
    font-weight: 600;
    color: rgb(7, 14, 59);
    font-size: 30px;
}

.container {
    height: 100vh; /* fit vertical content as column*/
    width: 100%;
    display: flex;
    align-items: center;
    justify-content: center; 
}
.form {
    position: relative;
    width:450px ;
    padding: 60px;
    border-radius: 6px;
    align-items: center;
    justify-content: center;
    background-color: #adcbd8; 
    
}

.firstname,
.lastname,
.email,
.password,
.confirm-password,
.phone {
    width: calc(100% - 13px);
    padding: 8px;
    margin: 0 auto;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 10px;
}

.agreement {
    margin-top: 10px;
    margin-right: 5px;
}

label {
    font-size: 14px;
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
.space {
    margin-top: 5px;
}
        
        
    </style>
</head>

<body>
<div class="s-system">Sign Up</div>
<section class="container forms">
    <div class="form signup">
        <div class="form-content">

            <img src="images/signinlogo.png" alt="" class="profilelogo">
            <header>Sign Up</header>

            <form action="InsertServelet1" method="POST">

                <div class="field-input-field">
                    <h3>First Name</h3>
                    <input type="text" placeholder="John" class="firstname" name="firstname" required >
                    <h3>Last Name</h3>
                    <input type="text" placeholder="Doe" class="lastname" name="lastname" required>
                    <h3>Email</h3>
                    <input type="email" placeholder="john@gmail.com" class="email" name="email"  required >
                    <h3>Password</h3>
                    <input type="password" placeholder="********" class="password"  name="password" required >
                    <h3>Confirm Password</h3>
                    <input type="password" placeholder="********" class="confirm-password"  name="confirmpassword"  required>
                    <h3>Phone Number</h3>
                    <input type="tel" placeholder="0XX-XXXXXXX" class="phone" pattern="[0-9]{10}" maxlength="10" title="Enter a valid Sri Lankan phone number" name="phonenumber" required> 
                </div>

                <div class="space "></div> <!--space-->

                <div class="field-input-field">
                    <input type="checkbox" id="agreement" class="agreement" required>
                    <label for="agreement">I agree to the Terms & Conditions</label>
                </div>

                <div class="space"></div> <!--space-->

                <div class="field button-field">
                    <button type="submit">Sign Up</button>
                </div>
                
                <div class="space"></div> <!--space-->

                <div class="form-link">
                    <span>Already have an account? <a href="login.jsp" class="login-link">Login</a></span>
                </div>
            </form>
        </div>
    </div>
</section>   
</body>
</html>
    