<%@ page import="static java.lang.String.valueOf" %>

<%@page import="app.Issue" %>
<%@page import="java.util.List" %>
<%@page import="java.util.*" %>


<%    if(session.getAttribute("username") == null){
    response.sendRedirect(request.getContextPath() + "/login.jsp");
}
%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<% if (session.getAttribute("userType").equals("ITStaff")) { %>

<html>
<head>
    <title>IT Homepage</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="banner">
    <h4>C.M.D IT Help</h4>
</div>
<h1>IT Home Page</h1>
<div class="parent">
    <a href="/c3374676_c3375558_c3380667_FinalProject/current-issues.jsp" class="iTSelection">Current Issues</a><br/><br/>
    <a href="/c3374676_c3375558_c3380667_FinalProject/knowledgebase.jsp" class="iTSelection">Knowledge Base</a><br/><br/>
    <a href="/c3374676_c3375558_c3380667_FinalProject/stats.jsp" class="iTSelection">Statistics</a><br/><br/>
    <a href="/c3374676_c3375558_c3380667_FinalProject/login.jsp" class="iTSelection">Login Page</a><br/><br/>
</div>
</body>
</html>

<%}

else{%>
<html>
<head>
    <title>Homepage</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="banner">
    <h4>C.M.D IT Help</h4>
</div>
<h1>Home Page</h1>
<div class="parent">
    <a href="/c3374676_c3375558_c3380667_FinalProject/report-issue.jsp" class="iTSelection">Report an Issue</a><br/><br/>
    <a href="/c3374676_c3375558_c3380667_FinalProject/user-issue.jsp" class="iTSelection">View Reported Issues</a><br/><br/>
    <a href="/c3374676_c3375558_c3380667_FinalProject/knowledgebase.jsp" class="iTSelection">Knowledge Base</a><br/><br/>
    <a href="/c3374676_c3375558_c3380667_FinalProject/login.jsp" class="iTSelection">Login Page</a><br/><br/>
</div>
</body>
</html>
<%}%>

