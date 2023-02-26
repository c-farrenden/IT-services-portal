
<%    if(session.getAttribute("username") == null){
    response.sendRedirect(request.getContextPath() + "/login.jsp");
}
%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String issueId = request.getParameter("issueId"); %>
<%@ page import="static java.lang.String.valueOf" %>

<%@page import="app.Issue" %>
<%@page import="java.util.List" %>
<%@page import="java.util.*" %>
<%@ page import="static app.Issue.*" %>

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
<h1>Issue successfully updated</h1>
<a href="/c3374676_c3375558_c3380667_FinalProject/current-issues.jsp">Current Issues</a>
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
<h1>Issue update failed</h1>
<a href="/c3374676_c3375558_c3380667_FinalProject/current-issues.jsp">Current Issues</a>
</body>
</html>
<%}



else{
List<Issue> issues = getAllIssues(); %>

<html>
<head>
    <title>Work On Issue</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="banner">
    <h4>C.M.D IT Help</h4>
</div>
<% for (Issue issue : issues) { %>
   <% String dbId = Integer.toString(issue.getIssueId()); %>
    <% if(issueId.equals(dbId)) { %>
        <div class="workingDiv">
            <p>Title: <span class="center"><%= issue.getTitle() %></span></p>
            <p>Issues Current State: <span class="center"><%= issue.getState() %></span></p>
            <p>Category of Issue: <span class="center"><%= issue.getCategory() %></span></p>
            <p>Description: <span class="center"><%= issue.getDescription() %></span></p>
            <p>Details: <span class="center"><%= issue.getResolutionDetails() %></span></p>
            <p>Comments: <span class="center"><%= issue.getComments() %></span></p>
            <p>Submitted By: <span class="center"><%= issue.getSubmittedBy() %></span></p>
            <p>Date Reported: <span class="center"> <%= issue.getDateTimeReported() %></span></p>
        <%if(issue.getState().equals("New")) { %>
            <form action="workOnIssue" method="post" class="center">
                <input type="hidden" id="issueId" name="issueId" value="<%= issue.getIssueId() %>">
                <input type="hidden" id="newState" name="newState" value="In Progress">
                <input type="submit" value="Start Work On issue" class="option">
            </form>
       <% } %>
    <%if(issue.getState().equals("In Progress")) { %>
    <form action="workOnIssue" method="post" class="center">
        <input type="hidden" id="issueId2" name="issueId" value="<%= issue.getIssueId() %>">
        Issue Resolution Details: <textarea id="resolutionDes" name="resolutionDes"></textarea><br/><br/>
        <input type="hidden" id="newState2" name="newState" value="Completed">
        <input type="submit" value="Submit issue resolution" class="option">
    </form>
        </div>
<% } %>
    <%}%>
<%}%>
<div class="parent">
    <a href="/c3374676_c3375558_c3380667_FinalProject/homepage.jsp" class="iTSelection">Home Page</a><br/>
</div>
</body>
</html>
<%}%>

