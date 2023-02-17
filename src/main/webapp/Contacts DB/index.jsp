<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8">

	<title>Home</title>

	<link rel="stylesheet" href="styles.css">
	
	<style>
	
	body {
	
	background: linear-gradient(-45deg, #ee7752, #e73c7e, #23a6d5, #23d5ab);
	background-size: 400% 400%;
	animation: gradient 15s ease infinite;
	display: flex;
	flex-direction: column;
	height: 100vh;
	margin: 0px;
	overflow: hidden;
	
	}
	
	@keyframes gradient {
	0% {
		background-position: 0% 50%;
	}
	50% {
		background-position: 100% 50%;
	}
	100% {
		background-position: 0% 50%;
	}
}
	
	</style>
</head>
<body>

	<div class="box" id="indexbox">
	
		<div class="block">
			<a href="form.jsp"><button class="button is-success" style="width: 100%;'">Add records</button></a>
		</div>
		
		<div class="block">
			<a href="retrieve.jsp"><button class="button is-info" style="width: 100%;">View records</button></a>
		</div>
	
	</div>

</body>
</html>