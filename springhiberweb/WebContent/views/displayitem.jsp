<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>SHOP HERE</title>
<style type="text/css">
body {
	margin: 0px;
}

.head-nav {
	height: 60px;
	background: black;
	display: flex;
	justify-content: space-around;
	align-items: center;
}

form {
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	padding: 30px;
}

.cards {
	background: rgba(255, 192, 203, 0.19);
	height: 330px;
	box-shadow: 0px 0px 10px #dadada;
	width: 20%;
	display: flex;
	justify-content: center;
	flex-direction: column;
	align-items: center;
	padding: 10px;
	margin: 20px;
	border-radius: 10px;
}

.btn {
	background: black;
	color: #fff;
	border: none;
	width: 80px;
	height: 40px;
	border-radius: 5px;
	font-weight: 800;
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

.images {
	padding: 0 0 30px 0;
}

.name {
	text-transform: capitalize;
	display: flex;
	justify-content: space-around;
}

.name>div:nth-child(1) {
	font-weight: 600;
	font-size: 18px;
	width: 30%;
}

.name>div:nth-child(2), .name>input {
	width: 40%;
	font-size: 18px;
}

.name>input {
	padding: 0 5px;
	box-sizing: border-box;
}
.card-holder{
	width:100%;
	display: flex;
	padding: 30px;
}
</style>
</head>
<body>
	<div class="head-nav">
		<a href="displayitem">SHOPING PAGE</a> <a href="userinvoice">CHECK
			MY INVOICES</a> <a href="logout">LOGOUT</a>
	</div>
	<form method="post" action="shop">
		<div class="card-holder">
			<c:forEach items="${items}" var="item">
				<div class="cards">
					<div class="images">
						<img
							src="https://freepngimg.com/thumb/fruit/4-2-fruit-png-image.png"
							width="150" height="150" />
					</div>
					<div>
						<div class="name">
							<div>Name:</div>
							<div>${item.itemdesc}</div>
						</div>
						<div class="name">
							<div>Category:</div>
							<div>${item.categories}</div>
						</div>
						<div class="name">
							<div>Cost:</div>
							<div>${item.prize}</div>
						</div>
						<div class="name">
							<div>Unit:</div>
							<div>${item.unit}</div>
						</div>
						<div class="name">
							<div>Count:</div>
							<input class="input" type="number" name=${item.itemno } value="0">
						</div>
					</div>
				</div>
			</c:forEach>
		</div>

		<button type="submit" class="btn">BUY</button>
	</form>
</body>
</html>