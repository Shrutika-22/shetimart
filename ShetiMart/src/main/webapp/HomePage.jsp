<%@page import="java.sql.Connection"%>
<%@page import="shetimart.*" %>


 <!--<%@page import="shetimart.db.DbConnection"%> -->
 
 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page isELIgnore="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sheti-market</title>
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">
.back-img {
	background: url("Image/farmer2.jpg");
	height: 60vh;
	width: 100%;
	background-repeat: no-repeat;
	background-size: cover;
}

.crd-ho:hover {
	background-color: #e8e8e8;
}
.bg-custom{
    background-color: #303f9f;
}
.navbar .nav-item:hover .nav-link{
	background-color:white ;
	color:#303f9f ;
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

</style>

</head>
<body style="background-color: #d9d2d2">
	<%@include file="all_component/navbar.jsp"%>
	<div class="container-flude back-img">
		<h2 class="text-center text-white ">Krushi Management System</h2>
	</div>

	
	<!--  start Recent Post -->
	<div class="container">

		<h3 class="text-center">Recent Post</h3>
		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="postimg"
							src="C:\Users\Admin\eclipse-workspace\ShetiMart\src\main\webapp\post\post1.jpg"
							style:"width:150px; height:200px" class="img-thumlin">
						<p>Post</p>
						<p>owner</p>
						<p>Catagories: New</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-cart-plus"></i>Add Cart</a> <a href=""
								class="btn btn-success btn-sm ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1">299</a>

						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="postimg" src="post2.jpeg"
							styel:"width:50px; height:50px" class="img-thumlin">
						<p>Post</p>
						<p>owner</p>
						<p>Catagories: New</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-cart-plus"></i>Add Cart</a> <a href=""
								class="btn btn-success btn-sm ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1">299</a>

						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="postimg" src="post3.jpeg"
							styel:"width:50px; height:50px" class="img-thumlin">
						<p>Post</p>
						<p>owner</p>
						<p>Catagories: New</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-cart-plus"></i>Add Cart</a> <a href=""
								class="btn btn-success btn-sm ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1">299</a>

						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="postimg" src="post4.jpeg"
							styel:"width:150px; height:200px" class="img-thumlin">
						<p>Post</p>
						<p>owner</p>
						<p>Catagories: New</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-cart-plus"></i>Add Cart</a> <a href=""
								class="btn btn-success btn-sm ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1">299</a>

						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="text-center mt-2">
			<a href="" class="btn btn-danger btn-sm text-white">View All</a>
		</div>
	</div>
	<!--  End Recent Post -->
	<hr>

	<!--  start New Post -->
	<div class="container">

		<h3 class="text-center">New Post</h3>
		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="postimg" src="post5.jpeg"
							styel:"width:50px; height:50px" class="img-thumlin">
						<p>Post</p>
						<p>owner</p>
						<p>Catagories: New</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-cart-plus"></i>Add Cart</a> <a href=""
								class="btn btn-success btn-sm ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1">299</a>

						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="postimg" src="post6.jpeg"
							styel:"width:50px; height:50px" class="img-thumlin">
						<p>Post</p>
						<p>owner</p>
						<p>Catagories: New</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-cart-plus"></i>Add Cart</a> <a href=""
								class="btn btn-success btn-sm ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1">299</a>

						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="postimg" src="post7.jpeg"
							styel:"width:50px; height:50px" class="img-thumlin">
						<p>Post</p>
						<p>owner</p>
						<p>Catagories: New</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-cart-plus"></i>Add Cart</a> <a href=""
								class="btn btn-success btn-sm ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1">299</a>

						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="postimg" src="post8.jpeg"
							styel:"width:150px; height:200px" class="img-thumlin">
						<p>Post</p>
						<p>owner</p>
						<p>Catagories: New</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-cart-plus"></i>Add Cart</a> <a href=""
								class="btn btn-success btn-sm ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1">299</a>

						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="text-center mt-2">
			<a href="" class="btn btn-danger btn-sm text-white">View All</a>
		</div>
	</div>
	<!--  End New Post -->
	<hr>
	<!--  start Old post -->
	<div class="container">

		<h3 class="text-center">Old Post</h3>
		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="postimg" src="post9.jpeg"
							styel:"width:50px; height:50px" class="img-thumlin">
						<p>Post</p>
						<p>owner</p>
						<p>Catagories: New</p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm ml-5">View Details</a> <a
								href="" class="btn btn-danger btn-sm ml-1">299</a>

						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="postimg" src="post10.jpeg"
							styel:"width:50px; height:50px" class="img-thumlin">
						<p>Post</p>
						<p>owner</p>
						<p>Catagories: New</p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm ml-5">View Details</a> <a
								href="" class="btn btn-danger btn-sm ml-1">299</a>

						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="postimg" src="post11.jpeg"
							styel:"width:50px; height:50px" class="img-thumlin">
						<p>Post</p>
						<p>owner</p>
						<p>Catagories: New</p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm ml-5">View Details</a> <a
								href="" class="btn btn-danger btn-sm ml-1">299</a>

						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="postimg" src="post1.jpeg"
							styel:"width:150px; height:200px" class="img-thumlin">
						<p>Post</p>
						<p>owner</p>
						<p>Catagories: New</p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm ml-5">View Details</a> <a
								href="" class="btn btn-danger btn-sm ml-1">299</a>

						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="text-center mt-2">
			<a href="" class="btn btn-danger btn-sm text-white">View All</a>
		</div>
		<hr>
		<%@include file="all_component/footer.jsp"%>
	</div>
	<!--  End Old Post -->

</body>
</html>