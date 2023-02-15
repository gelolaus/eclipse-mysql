<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">

<title>Form</title>

<link rel="stylesheet" href="styles.css">
</head>
<body>

<!--  This is the form  -->

<form method="POST" action="create.jsp" class="box" id="CreateBox">

	<div class="field">
		<label class="label">First Name</label>
		<div class="control">
		<input class="input" type="text" placeholder="First Name" id="first_name" name="first_name" required>
		</div>
	</div>
	
	<div class="field">
		<label class="label">Last Name</label>
		<div class="control">
		<input class="input" type="text" placeholder="Last Name" id="last_name" name="last_name" required>
	</div>
	
	<div class="field" style="padding-top: 12px;">
		<label class="label">Email</label>
		<div class="control">
		<input class="input" type="email" placeholder="Email Address" id="email_address"name="email_address" required>
		</div>
	</div>
	
		<div class="field">
		<label class="label">Contact</label>
		<div class="control">
		<input class="input" type="tel" placeholder="Contact Number" id="contact_number" name="contact_number" required>
		</div>
	</div>
		
	<div class="field is-grouped" id="CreateSubmit" style="padding-top: 2%;">
		<div class="control">
		<button class="button is-success">Submit</button>
		</div>
				<div class="control">
		<button class="button is-danger">Cancel</button>
		</div>
	</div>
	
	</div>

</form>

</body>
</html>