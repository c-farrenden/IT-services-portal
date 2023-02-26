<%@ page import="app.Issue" %>
<%@ page import="java.util.List" %>
<%@ page import="static app.Issue.getAllIssues" %>
<%@ page import="static java.lang.String.valueOf" %><%--
  Created by IntelliJ IDEA.
  User: cfarr
  Date: 2/06/2022
  Time: 12:38 pm
  To change this template use File | Settings | File Templates.
--%>
<%    if(session.getAttribute("username") == null){
    response.sendRedirect(request.getContextPath() + "/login.jsp");
}
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<% List<Issue> issues = getAllIssues(); %>
<%--<% if(!issue.getState().equals("Resolved")); %>--%>
<html>
<head>
    <title>User Issues</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<% String success = request.getParameter("success");
    if (valueOf(success).equals("True")) {%>
<script>
    alert("Updated");
</script>
<%}%>
<%if (valueOf(success).equals("False")) {%>
<script>
    alert("Update failed");
</script>
<%}%>
<div class="banner">
    <h4>C.M.D IT Help</h4>
</div>
<% for (Issue issue : issues) { %>
    <% String userIssue = issue.getSubmittedBy(); %>
    <% if(session.getAttribute("username").equals(userIssue)) { %>
    <div class="loginDiv">
        <p>Title: <%= issue.getTitle() %></p>
        <p>Issues Current State: <%= issue.getState() %></p>
        <p>Category of Issue: <%= issue.getCategory() %></p>
        <p>Description: <%= issue.getDescription() %></p>
        <p>Comments: <%= issue.getComments() %></p>
        <p>Submitted By: <%= issue.getSubmittedBy() %></p>
        <p>Date Reported: <%= issue.getDateTimeReported() %></p>
        <% if(issue.getState().equals("Completed")){ %>
            <h2>Does this solution solve your issue</h2>
            <div class="parent">
            <form action="resolution" method="post" class="accepted">
                <input type="hidden" id="resolved" name="resolved" value="True">
                <input type="hidden" id="issueId" name="issueId" value="<%= issue.getIssueId() %>">
                <input type="submit" value="Yes" class="option">
            </form>
            <form action="resolution" method="post" class="accepted">
                <input type="hidden" id="notAccepted" name="resolved" value="False">
                <input type="hidden" id="issueId2" name="issueId" value="<%= issue.getIssueId() %>">
                <input type="submit" value="No" class="option">
            </form>
        </div>
       <% }%>
    <% } %>
    </div>
<% } %>
        <div class="parent">
            <a href="/c3374676_c3375558_c3380667_FinalProject/homepage.jsp" class="iTSelection">Home Page</a><br/>
        </div>
</body>
</html>
