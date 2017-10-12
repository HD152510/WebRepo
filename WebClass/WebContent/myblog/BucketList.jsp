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
    <link rel="icon" href="../../../../favicon.ico">

    <title>햇밤우유의 Bucket List</title>

    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
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
                <a class="nav-link active" href="#">Bucket List</a>
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

<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<hr class="featurette-divider">

<div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <div class="row">
        <div class="col-lg-4">
            <img class="rounded-circle" src="../img/visit.jpg" alt="Generic placeholder image" width="140" height="140">
            <p><br></p>
            <h2>Visit</h2>
            <p>
                <br>
                헝가리 부다페스트 / 그리스 산토리니<br>
                페루 마추픽추 / 미국 뉴욕 LA<br>
                이탈리아 로마 / 볼리비아 우유니<br>
                프랑스 파리 / 스위스 베른<br><br>
            </p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
            <img class="rounded-circle" src="../img/sup.jpg" alt="Generic placeholder image" width="140" height="140">
            <p><br></p>
            <h2>Experience</h2>
            <p>
                <br>
                한화 한국시리즈 우승<br>
                PSG / AC밀란 챔피언스리그 우승<br>
                통장 잔고 10억<br>
                집 안에 의상실 만들기<br><br>
            </p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
            <img class="rounded-circle" src="../img/sigu.jpg" alt="Generic placeholder image" width="140" height="140">
            <p><br></p>
            <h2>Be</h2>
            <p>
                <br>
                연 순수익 10억 기업의 CEO<br>
                한화이글스 홈경기 시구자<br>
                오버워치 그랜드마스터<br>
                자서전의 주인공<br><br>
            </p>
        </div><!-- /.col-lg-4 -->
    </div><!-- /.row -->

    <hr class="featurette-divider">

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
