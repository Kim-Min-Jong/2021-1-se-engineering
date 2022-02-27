<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>로그인</title>

    <!-- Bootstrap core CSS -->
    <!-- <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" /> -->
    <link href="resources/css/boot.css" rel="stylesheet" />

    <!-- Custom styles for this template -->
    <link href="resources/css/signin.css" rel="stylesheet" />
</head>

<body>
    <div class="container">
        <form class="form-signin" action="login_process" method="post">
            <h2 class="form-signin-heading">로그인</h2>
            <label for="inputEmail" class="sr-only">ID</label>
            <input type="text" id="id" name="id" class="form-control" placeholder="아이디 입력" required autofocus/>
            <label for="pw" class="sr-only">Password</label>
            <input type="password" name="pw" id="pw" class="form-control" placeholder="비밀번호 입력" required/>
            <input type="radio" name="admin" value="admin"/>관리자
            <input type="radio" name="admin" value="user"/>사용자
            <br><br>
            <input type="submit" value="로그인" class="btn btn-lg btn-primary btn-block">
            <br>
    </div>
</body>

</html>