<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <link rel="stylesheet" href="css/style.css">
    <script src="https://kit.fontawesome.com/cd742a0dd6.js" crossorigin="anonymous"></script>
</head>

<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
    <div class="body">
        <div id="homebtn">
            <a href="main.jsp"><i class="fa-solid fa-house"></i></a>
        </div>
        <div class="form-container sign-up-form">
            <div class="imgBox sign-up-imgbox">
                <div class="sliding-link">
                    <p>Already a member?</p>
                    <span class="sign-in-btn"><a href="index.jsp"> Sign in</a></span>
                </div>
                <img src="images/signup-img.png" alt="">
            </div>
            <div class="form-box sign-up-box">
                <h2>Sign Up</h2>
                <form action="registration" method="post">
                    <div class="field">
                        <i class="fa-solid fa-at"></i>
                        <input type="email" name="email" placeholder="Email ID">
                    </div>
                    <div class="field">
                        <i class="fa-regular fa-user"></i>
                        <input type="text" name="user" placeholder="Full name">
                    </div>
                    <div class="field">
                        <i class="fa-solid fa-phone"></i>
                        <input type="text" onkeypress="return event.charCode >= 48 && event.charCode <= 57"
                            maxlength="10" name="cont" placeholder="Phone Number">
                    </div>
                    <div class="field">
                        <i class="fa-solid fa-unlock"></i>
                        <input type="password" maxlength="8" name="pwd" placeholder="Password">
                    </div>
                    <div class="field">
                        <i class="fa-solid fa-key"></i>
                        <input type="password" maxlength="8" name="cpwd" placeholder="Confirm password">
                    </div>
                        <input type="hidden" name="user_type" value="customer">
                    <input class="submit-btn" type="submit" value="Sign Up">
                </form>

            </div>
        </div>
    </div>
    <script>
    const textInputs = document.querySelectorAll("input");

    textInputs.forEach(textInput => {
        textInput.addEventListener("focus", () => {
            let parent = textInput.parentNode;
            parent.classList.add("active");
        });
        textInput.addEventListener("blur", () => {
            let parent = textInput.parentNode;
            parent.classList.remove("active");
        });
    });

    const passwordInput = document.querySelector(".password-input");
    const eyeBtn = document.querySelector(".eye-btn");
    eyeBtn.addEventListener("click", () => {
        if (passwordInput.type == "password") {
            passwordInput.type = "text";
            eyeBtn.innerHTML = "<i class='fa-solid fa-eye'></i>";
        } else {
            passwordInput.type = "password";
            eyeBtn.innerHTML = "<i class='fa-solid fa-eye-slash'></i>";
        }
    })
    </script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script type="text/javascript"> 
	var status = document.getElementById("status").value; 
	if(status == "success"){ 
		swal ("Congrats", "Account Created Successfully","success"); 
		} 
	</script>
</body>

</html>