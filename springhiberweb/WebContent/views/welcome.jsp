<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>USER DASHBOARD</title>
<style type="text/css">
body{
	margin: 0px;
	background-image: url("https://www.kotak.com/content/dam/Kotak/product_card_images/how-credit-cards-enhance-your-shopping-experience.jpg");
	background-repeat: no-repeat;
	background-size: cover;
}
.head-nav {
	height: 60px;
	background: black;
	display: flex;
	justify-content: space-around;
	align-items: center;
}
.head-nav>a {
	color: #fff;
	width: 20%;
	margin-right: 20px;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100%;
	text-decoration: none;
}
.head-nav>.logout {
	margin-right: unset !important;
}
a:hover {
	text-decoration: none;
	background: white;
	color: black;
}
.name{
	 text-transform: capitalize;
}
</style>
</head>
<body>
	<div class="head-nav">
		<a href="displayitem">SHOPING PAGE</a>
		<a href="userinvoice">CHECK MY INVOICES</a>
		<a href="logout">LOGOUT</a>
	</div>
	<h2>WELCOME</h2>
</body>
</html>