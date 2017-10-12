<%@ page import="org.dimigo.vo.UserVO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>햇밤우유의 돌다리</title>

    <!-- Bootstrap core CSS -->
    <link href="/WebClass/css/bootstrap.min.css" rel="stylesheet">
    <link href="/WebClass/css/carousel.css" rel="stylesheet">
</head>
<body>

<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <a class="navbar-brand" href="Main.jsp">Main</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="Intro.jsp">Intro<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="History.jsp">History</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="BucketList.jsp">Bucket List</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="signup.jsp">Sign Up</a>
            </li>
            <%
                UserVO user = (UserVO) session.getAttribute("user");
                if (user == null) {
            %>
            <li class="nav-item">
                <a class="nav-link" href="LogIn.jsp" id="log">Log in</a>
            </li>
            <% } else { %>
            <li class="nav-item">
                <form action="/WebClass/bloglogout" method="post">
                    <input type="submit" class="nav-link" value='<%= user.getName() %> Log out'>
                </form>
            </li>
            <% } %>
        </ul>
    </div>
</nav>
<hr class="featurette-divider">
	
<%
	String id = (request.getParameter("id") == null) ? "" : (String) request.getParameter("id");
%>

<form action="/WebClass/bloglogin" method="post">
    <input value="<%= id %>" type="text" placeholder="name" id="id" name="id" required>
    <input type="password" placeholder="pwd" id="pwd" name="pwd" required>

    <input type="submit"></input>
</form>

<hr class="featurette-divider">

<footer>
    <p class="float-right"><a href="#">Back to top</a></p>
    <p>&copy; 2017 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
</footer>
	
<div class="modal" id = "myModal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">로그인 결과</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>window.jQuery || document.write('<script src="/WebClass/js/jquery.min.js"><\/script>')</script>
<script src="/WebClass/js/popper.min.js"></script>
<script src="/WebClass/js/bootstrap.min.js"></script>
<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
<script src="/WebClass/js/holder.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="/WebClass/js/ie10-viewport-bug-workaround.js"></script>
	
	<script>
	<% if ("error".equals(request.getAttribute("result"))) { %>
	var myModal = $('#myModal');
	myModal.find('.modal-title').text('Login Error');
	myModal.find('.modal-body').text('Invalid username or password');
	myModal.modal();
	<% } %>
</script>
	
</body>
</html>
