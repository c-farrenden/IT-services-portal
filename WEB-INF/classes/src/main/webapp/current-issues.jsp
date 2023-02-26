<%@ page import="static java.lang.String.valueOf" %>

<%@page import="app.Issue" %>
<%@page import="java.util.List" %>
<%@page import="java.util.*" %>
<%@ page import="static app.Issue.*" %>

<% List<Issue> issues = getAllIssues(); %>

<%    if(session.getAttribute("username") == null){
    response.sendRedirect(request.getContextPath() + "/login.jsp");
}
%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Current Issues</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<% String kbAdd = request.getParameter("KBsuccess");
String exist = request.getParameter("exist");

    if (valueOf(kbAdd).equals("True")) { %>
    <script>
            alert("Added to Knowledge Base");
    </script>
    <%}
    if (valueOf(kbAdd).equals("False")) { %>
    <script>
        alert("Failed to add to Knowledge Base");
    </script>
    <%}%>
<%if (valueOf(exist).equals("True")) { %>
<script>
    alert("Already exists in the knowledge base");
</script>
<%}%>
<h1>Current Issues</h1>
<h2>New Issues</h2>
<div class="loginDiv">
    <% for (Issue issue : issues) { %>
    <% if(issue.getState().equals("New")) { %>
        <p>Title: <span class="centerText"><%= issue.getTitle() %></span></p>
        <p>Issues Current State: <span class="centerText"><%= issue.getState() %></span></p>
        <p>Category of Issue: <span class="centerText"><%= issue.getCategory() %></span></p>
        <p>Description: <span class="centerText"><%= issue.getDescription() %></span></p>
        <p>Details: <span class="centerText"><%= issue.getResolutionDetails() %></span></p>
        <p>Comments: <span class="centerText"><%= issue.getComments() %></span></p>
        <p>Submitted By: <span class="centerText"><%= issue.getSubmittedBy() %></span></p>
        <p>Date Reported: <span class="centerText"><%= issue.getDateTimeReported() %></span></p>
        <a href='/c3374676_c3375558_c3380667_FinalProject/workonissue.jsp?issueId=<%= issue.getIssueId() %>'><button>Work On Issue</button></a>
        <% }
    } %>
</div>
<br><br>
    <h2>In Progress Issues</h2>
    <div class="loginDiv">
    <% for (Issue issue : issues) {
        if(issue.getState().equals("In Progress")) { %>
            <p>Title: <span class="centerText"><%= issue.getTitle() %></span></p>
            <p>Issues Current State: <span class="centerText"><%= issue.getState() %></span></p>
            <p>Category of Issue: <span class="centerText"><%= issue.getCategory() %></span></p>
            <p>Description: <span class="centerText"><%= issue.getDescription() %></span></p>
            <p>Details: <span class="centerText"><%= issue.getResolutionDetails() %></span></p>
            <p>Comments: <span class="centerText"><%= issue.getComments() %></span></p>
            <p>Submitted By: <span class="centerText"><%= issue.getSubmittedBy() %></span></p>
            <p>Date Reported: <span class="centerText"><%= issue.getDateTimeReported() %></span></p>
            <a href='/c3374676_c3375558_c3380667_FinalProject/workonissue.jsp?issueId=<%= issue.getIssueId() %>'><button>Work On Issue</button></a>
        <% } %>
    <% } %>
</div>
<br><br>
    <h2>Not Accepted Issues</h2>
    <div class="loginDiv">
    <% for (Issue issue : issues) {
        if(issue.getState().equals("Not Accepted")) { %>
            <p>Title: <span class="centerText"><%= issue.getTitle() %></span></p>
            <p>Issues Current State: <span class="centerText"><%= issue.getState() %></span></p>
            <p>Category of Issue: <span class="centerText"><%= issue.getCategory() %></span></p>
            <p>Description: <span class="centerText"><%= issue.getDescription() %></span></p>
            <p>Details: <span class="centerText"><%= issue.getResolutionDetails() %></span></p>
            <p>Comments: <span class="centerText"><%= issue.getComments() %></span></p>
            <p>Submitted By: <span class="centerText"><%= issue.getSubmittedBy() %></span></p>
            <p>Date Reported: <span class="centerText"><%= issue.getDateTimeReported() %></span></p>
            <a href='/c3374676_c3375558_c3380667_FinalProject/workonissue.jsp?issueId=<%= issue.getIssueId() %>'><button>Work On Issue</button></a>
        <% } %>
    <% } %>
</div>
<br><br>
    <h2>Completed Issues</h2>
    <div class="loginDiv">
    <% for (Issue issue : issues) {
        if(issue.getState().equals("Completed")) { %>
            <p>Title: <span class="centerText"><%= issue.getTitle() %></span></p>
            <p>Issues Current State: <span class="centerText"><%= issue.getState() %></span></p>
            <p>Category of Issue: <span class="centerText"><%= issue.getCategory() %></span></p>
            <p>Description: <span class="centerText"><%= issue.getDescription() %></span></p>
            <p>Details: <span class="centerText"><%= issue.getResolutionDetails() %></span></p>
            <p>Comments: <span class="centerText"><%= issue.getComments() %></span></p>
            <p>Submitted By: <span class="centerText"><%= issue.getSubmittedBy() %></span></p>
            <p>Date Reported: <span class="centerText"><%= issue.getDateTimeReported() %></span></p>
            <form action="addToKnowledgeBase" method="post" >
                <input type="hidden" id="issueId4" name="issueId" value="<%= issue.getIssueId() %>">
                <input type="submit" value="Add To Knowledge Base" class="option">
            </form>
        <% } %>
    <% } %>
</div>
<br><br>
    <h2>Resolved Issues</h2>
    <div class="loginDiv">
    <% for (Issue issue : issues) {
        if(issue.getState().equals("Resolved")) { %>
        <p>Title: <span class="centerText"><%= issue.getTitle() %></span></p>
        <p>Issues Current State: <span class="centerText"><%= issue.getState() %></span></p>
        <p>Category of Issue: <span class="centerText"><%= issue.getCategory() %></span></p>
        <p>Description: <span class="centerText"><%= issue.getDescription() %></span></p>
        <p>Details: <span class="centerText"><%= issue.getResolutionDetails() %></span></p>
        <p>Comments: <span class="centerText"><%= issue.getComments() %></span></p>
        <p>Submitted By: <span class="centerText"><%= issue.getSubmittedBy() %></span></p>
        <p>Date Reported: <span class="centerText"><%= issue.getDateTimeReported() %></span></p>
        <form action="addToKnowledgeBase" method="post" >
            <input type="hidden" id="issueId" name="issueId" value="<%= issue.getIssueId() %>">
            <input type="submit" value="Add To Knowledge Base" class="option">
        </form>
        <% } %>
    <% } %>
</div>
<br/><br/>
<div class="parent">
    <a href="/c3374676_c3375558_c3380667_FinalProject/homepage.jsp" class="iTSelection">Home Page</a><br/>
</div>
</body>
</html>
