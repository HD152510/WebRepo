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
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>

<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <a class="navbar-brand" href="">Main</a>
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

<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img class="first-slide" src="../img/first%20slide.jpg" alt="First slide">
            <div class="container">
                <div class="carousel-caption d-none d-md-block text-left">
                    <h1>"Blaze with the fire that is never extinguished."</h1>
                    <p>햇밤우유 : 노승수의 블로그</p>
                    <p><a class="btn btn-lg btn-primary" href="Intro.jsp" role="button">Check my Intro</a></p>
                </div>
            </div>
        </div>
        <div class="carousel-item">
            <img class="second-slide" src="../img/second%20slide.jpg" alt="Second slide">
            <div class="container">
                <div class="carousel-caption d-none d-md-block">
                    <h1>"The journey is the reward."</h1>
                    <p>더 나은 사회, 더 나은 사람, 더 나은 삶을 위한 하루</p>
                    <p><a class="btn btn-lg btn-primary" href="History.jsp" role="button">Check my History</a></p>
                </div>
            </div>
        </div>
        <div class="carousel-item">
            <img class="third-slide" src="../img/third%20slide.jpg" alt="Third slide">
            <div class="container">
                <div class="carousel-caption d-none d-md-block text-right">
                    <h1>"Wish not so much to live long as to live well."</h1>
                    <p>즐거운 인생을 위한 사소하고 대담한 꿈</p>
                    <p><a class="btn btn-lg btn-primary" href="Bucket%20List.html" role="button">Check my Bucket List</a></p>
                </div>
            </div>
        </div>
    </div>
    <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>


<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <div class="row">
        <div class="col-lg-4">
            <img class="rounded-circle" src="../img/stu.jpg" alt="Generic placeholder image" width="140" height="140">
            <p><br></p>
            <h2>as a Student</h2>
            <p>
                <br>
                現 디미고 15기 해킹방어과<br>
                現 IT학생회 부의장 / 기획지원팀<br>
                現 IT Factory Coin 동아리장<br>
                現 Prism 일반 / 창업동아리원<br>
                前 Aperture 일반 / 창업동아리원(2016)<br><br>
            </p>
            <p><a class="btn btn-secondary" href="https://www.dimigo.hs.kr" role="button">Visit Dimigo &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
            <img class="rounded-circle" src="../img/org.jpg" alt="Generic placeholder image" width="140" height="140">
            <p><br></p>
            <h2>as a Organizer</h2>
            <p>
                <br>
                現 Postech 영재기업인교육원 심화과정 교육생<br>
                現 설리번 프로젝트 웹 교육 선생님<br>
                現 한국청소년경제심리학회 홍보미디어부장<br>
                前 Postech 영재기업인교육원 기본과정 교육생<br>
                前 고양교육지원청 발명교실 교육생(2014)<br><br>
            </p>
            <p><a class="btn btn-secondary" href="http://ceo.postech.ac.kr/ceo/" role="button">Visit PostechCeo &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
            <img class="rounded-circle" src="../img/dre.jpg" alt="Generic placeholder image" width="140" height="140">
            <p><br></p>
            <h2>as a Dreamer</h2>
            <p>
                <br>
                現 한화이글스 팬(...)<br>
                現 PSG / AC밀란 팬<br>
                現 UI / UX 공부중<br>
                現 웹 프로그래밍 / JAVA 공부중<br>
                現 오버워치 플래티넘<br><br>
            </p>
            <p><a class="btn btn-secondary" href="https://www.facebook.com/profile.php?id=100005507883424" role="button">Visit my Facebook&raquo;</a></p>
        </div><!-- /.col-lg-4 -->
    </div><!-- /.row -->
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
