<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="org.dimigo.vo.UserVO" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>햇밤우유의 돌다리</title>

    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/carousel.css" rel="stylesheet">
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
                <a class="nav-link active" href="#">Sign Up</a>
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

<hr class="featurette-divider">

<form id="loginForm">
    <h5>학년</h5>
    <input type="radio" name="grade" required>1학년<br>
    <input type="radio" name="grade">2학년<br>
    <input type="radio" name="grade">3학년<br>

    <h5><br>반</h5>
    <select>
        <option selected>1반</option>
        <option>2반</option>
        <option>3반</option>
        <option>4반</option>
        <option>5반</option>
        <option>6반</option>
    </select>

    <h5><br>번호</h5>
    <input type="text" placeholder="number" required>

    <h5><br>이름</h5>
    <input type="text" placeholder="name" id="id" required>

    <p><br></p>
    <button>Sign up</button>
</form>

<hr class="featurette-divider">

<footer>
    <p class="float-right"><a href="#">Back to top</a></p>
    <p>&copy; 2017 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
</footer>


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>window.jQuery || document.write('<script src="../js/jquery-slim.min.js"><\/script>')</script>
<script src="../js/popper.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
<script src="../js/holder.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="../js/ie10-viewport-bug-workaround.js"></script>
<script src="../js/js.js"></script>
</body>
</html>
