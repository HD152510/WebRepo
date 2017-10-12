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

    <title>햇밤우유의 Intro</title>

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
                <a class="nav-link active" href="#">Intro<span class="sr-only">(current)</span></a>
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

<!-- START THE FEATURETTES -->

    <hr class="featurette-divider">
<div style="margin:0px 0px 0px 15px">
    <div class="row featurette">
        <div class="col-md-7 order-md-2">
            <h2 class="featurette-heading">Who you are</h2>
            <p class="lead">
                <br>
                수많은 점을 찍다 보면 언젠간 다각형이 될 거라 믿는,<br><br>
                공학과 인문학 사이 경계를 두드리고 있는,<br><br>
                소통의 자유가 사회를 바꿀 거라고 확신하는,<br><br>
                즐겁게 사는 게 하루의 거의 전부라고 말하는 학생<br><br>
            </p>
        </div>
        <div class="col-md-5 order-md-1">
            <img class="first intro" src="../img/stu.jpg" alt="first intro" width="500" height="500">
        </div>
    </div>

<hr class="featurette-divider">

<div class="row featurette">
    <div class="col-md-7">
        <h2 class="featurette-heading">What you do</h2>
        <p class="lead">
            <br>
            現 Postech 영재기업인교육원 심화과정 교육생<br><br>
            現 설리번 프로젝트 웹 교육 선생님<br><br>
            現 한국청소년경제심리학회 홍보미디어부장<br><br>
            前 Postech 영재기업인교육원 기본과정 5기 교육생<br><br>
            前 고양교육지원청 발명교실 교육생(2014)<br><br>
        </p>
    </div>
    <div class="col-md-5">
        <img class="first intro" src="../img/second%20intro" alt="" width="500" height="500">
    </div>
</div>

    <hr class="featurette-divider">

    <!-- /END THE FEATURETTES -->


    <!-- FOOTER -->
    <footer>
        <p class="float-right"><a href="#">Back to top</a></p>
        <p>&copy; 2017 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
    </footer>

</div><!-- /.container -->


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script>window.jQuery || document.write('<script src="../js/jquery.min.js"><\/script>')</script>
<script src="../js/popper.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
<script src="../js/holder.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="../js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
