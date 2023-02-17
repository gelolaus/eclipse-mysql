<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8">

	<title>Form</title>

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

<!--  This is the form  -->

<form method="POST" action="create.jsp" class="box" id="createbox">

	<div class="field">
		<label class="label">Company Name</label>
		<div class="control">
		<input class="input" type="text" placeholder="Company Name"name="company_name" required>
		</div>
	</div>
	
	<div class="field">
		<label class="label">Last Name</label>
		<div class="control">
		<input class="input" type="text" placeholder="Last Name" name="last_name" required>
		</div>
	</div>
	
	<div class="field">
		<label class="label">First Name</label>
		<div class="control">
		<input class="input" type="text" placeholder="First Name" name="first_name" required>
	</div>
	
	<div class="field" style="">
		<label class="label">Email Address</label>
		<div class="control">
		<input class="input" type="email" placeholder="Email Address" name="email_address" required>
		</div>
	</div>
	
	<div class="field">
		<label class="label">Job Title</label>
		<div class="control">
		<input class="input" type="text" placeholder="Job Title"  name="job_title" required>
		</div>
	</div>
	
	<div class="field">
		<label class="label">Business Phone</label>
		<div class="control">
		<input class="input" type="tel" placeholder="Business Phone"  name="business_phone" required>
		</div>
	</div>
	
	<div class="field">
		<label class="label">Home Phone</label>
		<div class="control">
		<input class="input" type="tel" placeholder="Home Phone"  name="home_phone" required>
		</div>
	</div>
	
	<div class="field">
		<label class="label">City Lived</label>
		<div class="control">
		<input class="input" type="text" placeholder="City Lived"  name="city_lived" required>
		</div>
	</div>
		
	<div class="field is-grouped" style="padding-top: 2%;">
	
		<div class="control">
		<button class="button is-success" type="submit">Submit</button>
		</div>
	
		<div class="control">
		<a href="index.jsp"><button class="button is-danger" type="button">Cancel</button></a>
		</div>
		
	</div>
	
</div>

</form>

</body>
</html>