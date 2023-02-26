<%@ page import="static java.lang.String.valueOf" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@page import="pkg.Login" %>       <!-- Update this for your application! -->--%>
<%@page import="java.util.*" %>  <!-- You may need more imports! -->

<%--<% List<Login> movies = Login.getAllMovies(); %>--%>

<% String login = request.getParameter("loginBool");


    if (valueOf(login).equals("FALSE")) { %>
        <html>
    <head>
        <title>Login</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
    <div class="banner">
        <h4>C.M.D IT Help</h4>
    </div>
    <h1>Login</h1>
    <h3 id="invalid">Login details invalid</h3>
    <div class="loginDiv">
        <form action="login" method="post">
                Username: <input type="text" name="username" /><br /></br >
                Password: <input type="password" name="password" /><br /><br />

            <input type="submit" class="option"/>
        </form>
    </div>
    </body>
    <% } else { %>
        <html>
        <head>
            <title>Login</title>
            <link rel="stylesheet" href="style.css">
        </head>
        <body>
        <div class="banner">
            <h4>C.M.D IT Help</h4>
        </div>
        <h1>Login</h1>
        <div class="loginDiv">
        <form action="login" method="post">
            Username: <input type="text" name="username" /><br /><br />
            Password: <input type="password" name="password" /><br /><br />

            <input type="submit" class="option"/>
        </form>
        <a href="/c3374676_c3375558_c3380667_FinalProject/registration.jsp"> Register </a>
        </div>
        </body>
        </html>

    <% } %>





