<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Clean Blog - Start Bootstrap Theme</title>

<!-- Bootstrap core CSS -->

<link
	href="<s:url value="resources/vendor/bootstrap/css/bootstrap.min.css"></s:url>"
	rel="stylesheet">

<!-- Custom fonts for this template -->

<link
	href="<s:url value="resources/vendor/font-awesome/css/font-awesome.min.css"></s:url>"
	rel="stylesheet" type="text/css">
<link
	href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>

<!-- Custom styles for this template -->

<link href="<s:url value="resources/css/clean-blog.min.css"></s:url>"
	rel="stylesheet">



<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
	<!-- Page Header -->

	<header class="masthead">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-md-10 mx-auto">
					<div class="site-heading">
						<h1>Kategori Ekle</h1>
					</div>
				</div>
			</div>
		</div>
	</header>

	<nav class="navbar navbar-expand-lg navbar-light fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="<s:url value="/"></s:url>">Clean
				Blog</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fa fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto pull-right">
					<c:if test="${ empty giris }">
						<li class="nav-item"><a class="nav-link"
							href=" <s:url value="/loginpage"></s:url>">GİRİS YAP</a></li>
					</c:if>
					<c:if test="${not empty giris }">
						<li class="nav-item"><a class="nav-link"
							href=" <s:url value="/categorypage"></s:url>">KATEGORİ EKLE</a></li>
						<li class="nav-item"><a class="nav-link"
							href=" <s:url value="/postpage"></s:url>">İÇERİK EKLE</a></li>
						<li class="nav-item"><a class="nav-link"
							href=" <s:url value="/cikis"></s:url>">ÇIKIŞ</a></li>
					</c:if>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-md-10 mx-auto">
			
				<form action='<s:url value="/categoryadd"></s:url>' method="POST">
					<div class="form-group">
						<label for="cat">Kategori</label> <input name="category" id="cat"
							type="text" class="form-control"
							placeholder="Katergori Giriniz... ">
					</div>
						<button type="submit" class="btn btn-primary pull-right">Ekle</button>
				</form>
			</div>
		</div>
	</div>

	<!-- Main Content -->
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-md-10 mx-auto">
				<c:if test="${not empty posts }">
					<c:forEach var="item" items="${posts }">
						<div class="post-preview">

							<a href='<s:url value="/${item.getId() }"></s:url>'>
								<h2 class="post-title">
									<c:out value="${item.getTitle() }"></c:out>
								</h2>
							</a>
							<p class="post-meta">
								Posted by <a href="#">Start Bootstrap</a>
								<c:out value="${item.getDate() }"></c:out>
							</p>

						</div>
						<hr>
					</c:forEach>
				</c:if>
			</div>
		</div>
	</div>

	<hr>

	<!-- Footer -->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-md-10 mx-auto">
					<ul class="list-inline text-center">
						<li class="list-inline-item"><a href="#"> <span
								class="fa-stack fa-lg"> <i
									class="fa fa-circle fa-stack-2x"></i> <i
									class="fa fa-twitter fa-stack-1x fa-inverse"></i>
							</span>
						</a></li>
						<li class="list-inline-item"><a href="#"> <span
								class="fa-stack fa-lg"> <i
									class="fa fa-circle fa-stack-2x"></i> <i
									class="fa fa-facebook fa-stack-1x fa-inverse"></i>
							</span>
						</a></li>
						<li class="list-inline-item"><a href="#"> <span
								class="fa-stack fa-lg"> <i
									class="fa fa-circle fa-stack-2x"></i> <i
									class="fa fa-github fa-stack-1x fa-inverse"></i>
							</span>
						</a></li>
					</ul>
					<p class="copyright text-muted">Copyright &copy; Your Website
						2017</p>
				</div>
			</div>
		</div>
	</footer>

	<!-- Bootstrap core JavaScript -->

	<script
		src="<s:url value="resources/vendor/jquery/jquery.min.js"></s:url>"></script>
	<script
		src="<s:url value="resources/vendor/popper/popper.min.js"></s:url>"></script>
	<script
		src="<s:url value="resources/vendor/bootstrap/js/bootstrap.min.js"></s:url>"></script>

	<!-- Custom scripts for this template -->
	<script src="<s:url value="resources/js/clean-blog.min.js"></s:url>"></script>

</body>

</html>
