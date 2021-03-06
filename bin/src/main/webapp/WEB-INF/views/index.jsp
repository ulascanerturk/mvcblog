<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Clean Blog - Start Bootstrap Theme</title>

    <!-- Bootstrap core CSS -->
    
    <link href="<s:url value="resources/vendor/bootstrap/css/bootstrap.min.css"></s:url>" rel="stylesheet">

    <!-- Custom fonts for this template -->
    
    <link href="<s:url value="resources/vendor/font-awesome/css/font-awesome.min.css"></s:url>" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

    <!-- Custom styles for this template -->
    
    <link href="<s:url value="resources/css/clean-blog.min.css"></s:url>" rel="stylesheet">

  </head>

  <body>
  <h2><a href='<s:url value="login"></s:url>'>Login</a></h2>

    <!-- Page Header -->
    <header class="masthead" style="background-image: url('img/home-bg.jpg')">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 col-md-10 mx-auto">
            <div class="site-heading">
              <h1>Clean Blog</h1>
              <span class="subheading">A Blog Theme by Start Bootstrap</span>
            </div>
          </div>
        </div>
      </div>
    </header>

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
            <p class="post-meta">Posted by
              <a href="#">Start Bootstrap</a>
              <c:out value="${item.getDate() }"></c:out> </p>
              
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
              <li class="list-inline-item">
                <a href="#">
                  <span class="fa-stack fa-lg">
                    <i class="fa fa-circle fa-stack-2x"></i>
                    <i class="fa fa-twitter fa-stack-1x fa-inverse"></i>
                  </span>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <span class="fa-stack fa-lg">
                    <i class="fa fa-circle fa-stack-2x"></i>
                    <i class="fa fa-facebook fa-stack-1x fa-inverse"></i>
                  </span>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <span class="fa-stack fa-lg">
                    <i class="fa fa-circle fa-stack-2x"></i>
                    <i class="fa fa-github fa-stack-1x fa-inverse"></i>
                  </span>
                </a>
              </li>
            </ul>
            <p class="copyright text-muted">Copyright &copy; Your Website 2017</p>
          </div>
        </div>
      </div>
    </footer>

    <!-- Bootstrap core JavaScript -->
    
    <script src="<s:url value="resources/vendor/jquery/jquery.min.js"></s:url>"></script>
    <script src="<s:url value="resources/vendor/popper/popper.min.js"></s:url>"></script>
    <script src="<s:url value="resources/vendor/bootstrap/js/bootstrap.min.js"></s:url>"></script>

    <!-- Custom scripts for this template -->
    <script src="<s:url value="resources/js/clean-blog.min.js"></s:url>"></script>

  </body>

</html>
    