
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.util.*" %>
<%@ page import="static java.lang.String.valueOf" %>

<%    if(session.getAttribute("username") == null){
    response.sendRedirect(request.getContextPath() + "/login.jsp");
    }
%>


<% String success = request.getParameter("success");


    if (valueOf(success).equals("True")) { %>
        <html>
        <head>
            <title>Issue</title>
            <link rel="stylesheet" href="style.css">
        </head>
        <body>
        <div class="banner">
            <h4>C.M.D IT Help</h4>
        </div>
        <h1>Issue successfully submitted</h1>
        <p>Return to the Home Page below</p>
        <a href="/c3374676_c3375558_c3380667_FinalProject/homepage.jsp">Homepage</a>
        </body>
        </html>
<% }
    else if (valueOf(success).equals("False")) { %>
    <html>
    <head>
        <title>Issue</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
    <div class="banner">
        <h4>C.M.D IT Help</h4>
    </div>
    <h1>Issue submission Failed please try again</h1>
    <a href="/c3374676_c3375558_c3380667_FinalProject/report-issue.jsp">Report an issue</a>
    </body>
    </html>
<%}
else{%>
<html>
<head>
    <title>Issue</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="banner">
    <h4>C.M.D IT Help</h4>
</div>
<h1>Report an Issue</h1>
<div class="loginDiv">
<form action="issue" method="post">
    Category: <select name = "category">
        <option value = "Network">Network</option>
        <option value = "Software">Software</option>
        <option value = "Hardware">Hardware</option>
        <option value = "Email">Email</option>
        <option value = "Account">Account</option>
    </select><br/><br/>
    Title: <input type="text" name="title" /><br /><br />
    Description: <input type="text" name="descriptions" /><br /><br />
    Comments: <input type="text" name="comments" /><br /><br />
    <input type="submit" class="option"/>
</form>
</div>
<div class="parent">
    <a href="/c3374676_c3375558_c3380667_FinalProject/homepage.jsp" class="iTSelection">Home Page</a><br/>
</div>
</body>
</html>
<%}%>