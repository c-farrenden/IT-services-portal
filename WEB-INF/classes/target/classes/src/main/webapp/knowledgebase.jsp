<%@ page import="app.Issue" %>
<%@ page import="app.KnowledgeBase" %>
<%@ page import="java.util.List" %>
<%@ page import="static app.Issue.*" %>
<%@ page import="static app.KnowledgeBase.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% List<KnowledgeBase> kbissues = getAllArticles(); %>
<% List<KnowledgeBase> articles;
    articles = getAllArticles(); %>
<%    if(session.getAttribute("username") == null){
    response.sendRedirect(request.getContextPath() + "/login.jsp");
}
%>

<html>
<head>
    <title>Knowledge-Base</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<h1>Knowledge Base Articles</h1>
        <h2>Network Issues</h2>
        <% for (KnowledgeBase issue : kbissues)  { %>
            <div class="loginDiv">
            <%if(issue.getCategory().equals("Network")){%>
                <p>Title: <span class="centerText"><%= issue.getTitle() %></span></p>
                <p>Description: <span class="centerText"><%= issue.getDescriptions() %></span></p>
                <p>Resolution Details: <span class="centerText"><%= issue.getResolutionDetails() %></span></p>
                <p>Date Reported: <span class="centerText"><%= issue.getDateTimeReported() %></span></p>
                <p>Date Resolved: <span class="centerText"><%= issue.getDateTimeResolved() %></span></p>
                <br/><br/>
            <%}%>
        <% } %>
        </div>

        <h2>Software Issues</h2>
        <% for (KnowledgeBase issue : kbissues)  { %>
        <div class="loginDiv">
            <%if(issue.getCategory().equals("Software")){%>
            <p>Title: <span class="centerText"><%= issue.getTitle() %></span></p>
            <p>Description: <span class="centerText"><%= issue.getDescriptions() %></span></p>
            <p>Resolution Details: <span class="centerText"><%= issue.getResolutionDetails() %></span></p>
            <p>Date Reported: <span class="centerText"><%= issue.getDateTimeReported() %></span></p>
            <p>Date Resolved: <span class="centerText"><%= issue.getDateTimeResolved() %></span></p>
        <br/><br/>
        <%}%>
        <% } %>
        </div>

        <h2>Hardware Issues</h2>
        <% for (KnowledgeBase issue : kbissues)  { %>
        <div class="loginDiv">
            <%if(issue.getCategory().equals("Hardware")){%>
            <p>Title: <span class="centerText"><%= issue.getTitle() %></span></p>
            <p>Description: <span class="centerText"><%= issue.getDescriptions() %></span></p>
            <p>Resolution Details: <span class="centerText"><%= issue.getResolutionDetails() %></span></p>
            <p>Date Reported: <span class="centerText"><%= issue.getDateTimeReported() %></span></p>
            <p>Date Resolved: <span class="centerText"><%= issue.getDateTimeResolved() %></span></p>
        <br/><br/>
        <%}%>
        <% } %>
        </div>

        <h2>Email Issues</h2>
        <% for (KnowledgeBase issue : kbissues)  { %>
        <div class="loginDiv">
            <%if(issue.getCategory().equals("Email")){%>
            <p>Title: <span class="centerText"><%= issue.getTitle() %></span></p>
            <p>Description: <span class="centerText"><%= issue.getDescriptions() %></span></p>
            <p>Resolution Details: <span class="centerText"><%= issue.getResolutionDetails() %></span></p>
            <p>Date Reported: <span class="centerText"><%= issue.getDateTimeReported() %></span></p>
            <p>Date Resolved: <span class="centerText"><%= issue.getDateTimeResolved() %></span></p>
        <br/><br/>
        <%}%>
        <% } %>
        </div>

        <h2>Account Issues</h2>
        <% for (KnowledgeBase issue : kbissues)  { %>
        <div class="loginDiv">
            <%if(issue.getCategory().equals("Network")){%>
            <p>Title: <span class="centerText"><%= issue.getTitle() %></span></p>
            <p>Description: <span class="centerText"><%= issue.getDescriptions() %></span></p>
            <p>Resolution Details: <span class="centerText"><%= issue.getResolutionDetails() %></span></p>
            <p>Date Reported: <span class="centerText"><%= issue.getDateTimeReported() %></span></p>
            <p>Date Resolved: <span class="centerText"><%= issue.getDateTimeResolved() %></span></p>
        <br/><br/>
        <%}%>
        <% } %>
        </div>
<div class="parent">
    <a href="/c3374676_c3375558_c3380667_FinalProject/homepage.jsp" class="iTSelection">Home Page</a><br/>
</div>
</body>
</html>
