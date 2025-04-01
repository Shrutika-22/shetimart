<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Farmer Register</title>
<%@include file="all_component/allCss.jsp"%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+Knujsl5+zEK5u8+29MJBjj5TkBf6G8rlV+tn7E1486PipF"
	crossorigin="anonymous">
<style>
/* Custom CSS */
body {
	background-color: #f8f9fa;
}

.card {
	border-radius: 10px;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

.bg-custom {
	background-color: #303f9f;
}

.navbar .nav-item:hover .nav-link {
	background-color: white;
	color: #303f9f;
	border-radius: 15px;
}

.site-footer {
	background-color: #3875b2;
	padding: 50px 0;
	overflow: hidden;
}

.site-footer h3 {
	color: #fff;
}

.site-footer p {
	color: #ccc;
}

.site-footer address {
	margin-bottom: 20px;
}

.site-footer hr {
	border-top-color: #fff;
	margin-top: 10px;
	margin-bottom: 10px;
}

.social-icons {
	list-style: none;
	padding: 0;
}

.social-icons li {
	display: inline-block;
	margin-right: 10px;
}

.social-icons li a {
	color: #fff;
	font-size: 20px;
}

.social-icons li a:hover {
	color: #ccc;
}
.form-select {
    width: 100%;
    padding: .375rem .75rem;
    font-size: 1rem;
    line-height: 1.5;
    color: #495057;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid #ced4da;
    border-radius: .25rem;
    transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
}

.form-select:focus {
    border-color: #80bdff;
    outline: 0;
    box-shadow: 0 0 0 .25rem rgba(0, 123, 255, .25);
}

</style>
</head>
<body style="background-color: #f0f1f2">
	<%@include file="all_component/navbar.jsp"%>
	<div class="container p-2">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title text-center mb-4">Farmer Registration</h5>
						<form action="register" method="post" class="needs-validation"
							novalidate onsubmit="return validateForm()">
							<div class="mb-3">
								<label for="firstName" class="form-label">First Name<span
									class="text-danger">*</span></label> <input type="text"
									class="form-control" id="firstName"
									placeholder="Enter First Name" required name="firstName">
								<div class="invalid-feedback">Please enter your first
									name.</div>
							</div>
							<div class="mb-3">
								<label for="lastName" class="form-label">Last Name<span
									class="text-danger">*</span></label> <input type="text"
									class="form-control" id="lastName"
									placeholder="Enter Last Name" required name="lastName">
								<div class="invalid-feedback">Please enter your last name.</div>
							</div>

							<div class="mb-3">
								<label for="lastName" class="form-label">Phone<span
									class="text-danger">*</span></label> <input type="tel"
									class="form-control" id="phone"
									placeholder="Enter Phone Number" required name="userPhone">
								<div class="invalid-feedback">Please enter your phone.</div>
							</div>
							<div class="mb-3">
								<label for="lastName" class="form-label">Address<span
									class="text-danger">*</span></label> <input type="text"
									class="form-control" id="address" placeholder="Enter Address"
									required name="userAddress">
								<div class="invalid-feedback">Please enter your address.</div>
							</div>
							<div class="mb-3">
								<label for="lastName" class="form-label">Email Id<span
									class="text-danger">*</span></label> <input type="text"
									class="form-control" id="email" placeholder="Enter Email Id"
									required name="userEmail">
								<div class="invalid-feedback">Please enter your email id.</div>
							</div>
							<div class="mb-3">
								<label for="password" class="form-label">Password<span
									class="text-danger">*</span></label> <input type="password"
									class="form-control" id="password" placeholder="Enter Password"
									required name="password">
								<div class="invalid-feedback">Please enter a password.</div>
							</div>
							<div class="mb-3">
								<label for="confirmPassword" class="form-label">Confirm
									Password<span class="text-danger">*</span>
								</label> <input type="password" class="form-control"
									id="confirmPassword" placeholder="Confirm Password" required>
								<div class="invalid-feedback">Please confirm your
									password.</div>
								<div id="passwordMismatch" class="invalid-feedback">Passwords
									do not match.</div>
								<div class="mb-3">
									<label for="userType" class="form-label">Role<span
										class="text-danger">*</span></label> <select class="form-select"
										id="userType" required name="role" placeholder="select user">
										<option value="" disabled="disabled">Select User Type</option>
										<option value="Farmer">Farmer</option>
										<option value="Buyer">Buyer</option>
									</select>
									<div class="invalid-feedback">Please select a user type.</div>
								</div>
							</div>

							<div class="form-check mb-3">
								<input class="form-check-input" type="checkbox" value=""
									id="agreement" required> <label
									class="form-check-label" for="agreement" required> I
									agree to the terms and conditions </label>
								<div class="invalid-feedback">You must agree before
									submitting.</div>
							</div>
							<div class="d-grid gap-2">
								<button type="submit" class="btn btn-primary">Create
									Account</button>
								&nbsp;&nbsp;&nbsp;
								<button type="reset" class="btn btn-secondary">Reset</button>
							</div>
							<p class="text-center mt-3">
								Already have an account? <a href="#">Login</a>
							</p>
						</form>
					</div>
				</div>
			</div>
		</div>
		<hr>
		<%@include file="all_component/footer.jsp"%>
	</div>
	<script>
		// JavaScript for password matching validation
		var password = document.getElementById("password");
		var confirmPassword = document.getElementById("confirmPassword");

		function validatePassword() {
			if (password.value != confirmPassword.value) {
				confirmPassword.setCustomValidity("Passwords do not match");
				document.getElementById("passwordMismatch").style.display = "block";
			} else {
				confirmPassword.setCustomValidity("");
				document.getElementById("passwordMismatch").style.display = "none";
			}
		}

		password.onchange = validatePassword;
		confirmPassword.onkeyup = validatePassword;

		function validateForm() {
			var isValid = true;
			var formControls = document.getElementsByClassName("form-control");

			for (var i = 0; i < formControls.length; i++) {
				if (formControls[i].value === "") {
					formControls[i].classList.add("is-invalid");
					isValid = false;
				} else {
					formControls[i].classList.remove("is-invalid");
				}
			}

			return isValid;
		}
	</script>
</body>
</html>
