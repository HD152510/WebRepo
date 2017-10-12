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

    <title>햇밤우유의 History</title>

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
                <a class="nav-link active" href="#">History</a>
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
            <h2 class="featurette-heading">Before HighSchool</h2>
            <p class="lead">
                <br>
                변호사, 화학자, 환경운동가 등 꿈이 많았던,<br><br>
                학교에 흥미가 없어 친구들과 방황하던,<br><br>
                포스텍 영재기업인교육원에서 바뀐 인생을 경험한,<br><br>
                변화의 조짐과 잠재력만 가지고 있던 학생<br><br>
            </p>
        </div>
        <div class="col-md-5 order-md-1">
            <img class="before" src="../img/before.jpg" alt="before" width="500" height="500">
        </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
        <div class="col-md-7">
            <h2 class="featurette-heading">2016</h2>
            <p class="lead">
                <br>
                1년 넘게 꿈꾸던 학교에서 공부할 기회를 얻은,<br><br>
                공부와 교내외 활동 사이에서 괴리감을 느낀,<br><br>
                새로운 분야를 공부하는 즐거움을 배운,<br><br>
                인생에서 가장 행복한 1년을 보냈던 학생<br><br>
            </p>
        </div>
        <div class="col-md-5">
            <img class="2016" src="../img/2016.jpg" alt="2016" width="500" height="500">
        </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
        <div class="col-md-7 order-md-2">
            <h2 class="featurette-heading">2017</h2>
            <p class="lead">
                <br>
                익숙해진 일상 속 잃어가는 것들이 슬픈,<br><br>
                선택과 집중의 의무 아래 방향을 선택하는 중인,<br><br>
                내년이면 고삼이라는 사실이 전혀 믿기지 않는,<br><br>
                하고자 하는 의지를 여전히 불태우는 중인 학생<br><br>
            </p>
        </div>
        <div class="col-md-5 order-md-1">
            <img class="2017" src="../img/2017.jpg" alt="2017" width="500" height="500">
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
