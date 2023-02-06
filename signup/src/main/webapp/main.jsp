<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	if(session.getAttribute("user")==null){
		response.sendRedirect("index.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/nav.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@500&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/cd742a0dd6.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kaushan+Script&display=swap" rel="stylesheet">
</head>
<body>
<div class="home">
<div class="header">
            <div class="logo">
                <img src="images/mlogo.png" alt="">
            </div>
            <div class="navbar">
                <ul>
                    <li><a href="main.php">Home</a></li>
                    <li><a href="about.php">About Us</a></li>
                    <li><a href="place.php">Membership</a></li>
                    <li><a href="offers.php">Success Story</a></li>
                    <li><a href="quick_inquiry.php">Contact Us</a></li>
                </ul>
            </div>
            <div class="option">
            	<a href="Logout"><%=session.getAttribute("user") %> </a> 
                <a href="Logout"><i class="fa-solid fa-right-from-bracket"></i> Logout </a> 
            </div>
        </div>
        </div>
        <div class="mainbox">
        <div class="book">
            <form  class="" method="post">
            <input type="email" class="textbox" name="email" value="<%=session.getAttribute("email") %>" readonly>
            <input type="text" class="textbox" name="email" value="<%=session.getAttribute("user") %>" readonly>
                <div class="box1">
                    <select name="place" id="">
                        <option value="empty">I am looking for a..</option>
                        <option value="Groom">Groom</option>
                        <option value="Bride">Bride</option>
                    </select>
                    <select name="place" id="">
                        <option value="empty">Age from </option>
                        <option value="18-22">18 to 22</option>
                        <option value="23-26">23 to 26</option>
                        <option value="27-30">27 to 30</option>
                        <option value="31-34">31 to 34</option>
                    </select>
                    <select name="place" id="">
                        <option value="empty">Age to</option>
                        <option value="18-22">18 to 22</option>
                        <option value="23-26">23 to 26</option>
                        <option value="27-30">27 to 30</option>
                        <option value="31-34">31 to 34</option>
                    </select>
                    <select name="place" id="">
                        <option value="empty">Of Religion</option>
                        <option value="Hindu">Hindu</option>
                        <option value="Islam">Islam</option>
                        <option value="Christian">Christian</option>
                        <option value="Jain">Jain</option>
                        <option value="Sikh">Sikh</option>
                    </select>
                    <select name="players" id="">
                        <option value="empty">Mother Tongue</option>
                        <option value="Hindi">Hindi</option>
                        <option value="	Bengali">Bengali</option>
                        <option value="	Marathi">	Marathi</option>
                        <option value="Punjabi">Punjabi</option>
                    </select>
                </div>
                <input type="hidden" name="status" value="1">
                <div class="pbtn">
                    <input type="submit" value="Proceed" name="proceed">
                    <input type="reset" value="Reset" class="reset">
                </div>
            </form>
        </div>
    </div>
 <script>
 window.addEventListener("load", function() {
     preloader.style.display = "none";

 })
 window.addEventListener("scroll", function() {
     var header = document.querySelector(".header");
     header.classList.toggle("sticky", window.scrollY > 0);
 })

 </script>
</body>
</html>	
