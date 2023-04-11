<!DOCTYPE html>
<html>
<head>
    <title>Login Form</title>
    <link rel="stylesheet" type="text/css" href="{{asset('css/app.css')}}">
</head>
<body>
    <h2>Login to Ananda</h2><br>
    <div class="login">
    <form id="login" method="post" action="/login">
    @csrf
        <label><b>User Name
        </b>
        </label>
        <input type="text" name="Uname" id="Uname" placeholder="Username">
        <br><br>
        <label><b>Password
        </b>
        </label>
        <input type="Password" name="Pass" id="Pass" placeholder="Password">
        <br><br>
        <input type="submit" name="log" id="log" value="Log In Here">
        <br><br>
        <input type="checkbox" id="check">
        <span>Remember me</span>
        <br><br><a href="#">Forgot Password</a>
    </form>
</div>
</body>
</html>