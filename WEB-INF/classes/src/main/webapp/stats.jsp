<%@ page import="static java.lang.String.valueOf" %>
<%@page import="app.Issue" %>
<%@page import="java.sql.Timestamp" %>
<%@page import="java.time.temporal.ChronoUnit" %>
<%@ page import="static app.Issue.*" %>
<%@ page import="java.util.List" %>
<%@ page import="java.sql.Time" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<% List<Issue> issues = getAllIssues(); %>

<%    if(session.getAttribute("username") == null){
    response.sendRedirect(request.getContextPath() + "/login.jsp");
}
%>

<%
    // Counters for each categorised unresolved issue
    int networkUnresolved = 0;
    int softwareUnresolved = 0;
    int hardwareUnresolved = 0;
    int emailUnresolved = 0;
    int accountUnresolved = 0;
    // Counters for each categorised resolved issue
    int networkResolved = 0;
    int softwareResolved = 0;
    int hardwareResolved = 0;
    int emailResolved = 0;
    int accountResolved = 0;
    // Counters for stress rate equation
    int unsolvedIncidents = 0;
    int totalIncidents = 0;
    //  Staff is a prefixed amount - otherwise loop
    int totalStaff = 8;
    double stressRate = 0.0;
%>

<%
    Long datetime = System.currentTimeMillis();
    Timestamp timestamp = new Timestamp(datetime);
%>
<html>
<head>
    <title>Statistics</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="banner">
    <h4>C.M.D IT Help</h4>
</div>
<p><% for (Issue issue : issues) { %>
    <% if(!issue.getState().equals("Resolved") && issue.getCategory().equals("Network")) { %>
        <% networkUnresolved++; %>
        <% unsolvedIncidents++; %>
        <% totalIncidents++; %>
    <% } else if(!issue.getState().equals("Resolved") && issue.getCategory().equals("Software")) { %>
        <% softwareUnresolved++; %>
        <% unsolvedIncidents++; %>
        <% totalIncidents++; %>
    <% } else if(!issue.getState().equals("Resolved") && issue.getCategory().equals("Hardware")) { %>
        <% hardwareUnresolved++; %>
        <% unsolvedIncidents++; %>
        <% totalIncidents++; %>
    <% } else if(!issue.getState().equals("Resolved") && issue.getCategory().equals("Email")) { %>
        <% emailUnresolved++; %>
        <% unsolvedIncidents++; %>
        <% totalIncidents++; %>
    <% } else if(!issue.getState().equals("Resolved") && issue.getCategory().equals("Account")) { %>
        <% accountUnresolved++; %>
        <% unsolvedIncidents++; %>
        <% totalIncidents++; %>

    <% } else if(issue.getState().equals("Resolved") && issue.getCategory().equals("Network") && issue.getDateTimeResolved().compareTo(timestamp) < 7){ %>
        <% networkResolved++; %>
        <% totalIncidents++; %>
    <% } else if(issue.getState().equals("Resolved") && issue.getCategory().equals("Software") && issue.getDateTimeResolved().compareTo(timestamp) < 7) { %>
        <% softwareResolved++; %>
        <% totalIncidents++; %>
    <% } else if(issue.getState().equals("Resolved") && issue.getCategory().equals("Hardware") && issue.getDateTimeResolved().compareTo(timestamp) < 7) { %>
        <% hardwareResolved++; %>
        <% totalIncidents++; %>
    <% } else if(issue.getState().equals("Resolved") && issue.getCategory().equals("Email") && issue.getDateTimeResolved().compareTo(timestamp) < 7) { %>
        <% emailResolved++; %>
        <% totalIncidents++; %>
    <% } else if(issue.getState().equals("Resolved") && issue.getCategory().equals("Account") && issue.getDateTimeResolved().compareTo(timestamp) < 7) { %>
        <% accountResolved++; %>
        <% totalIncidents++; %>
    <% } %>
    <% } %>
</p>
<div class="loginDiv">
<p>Total Unsolved Network Incidents: <%= networkUnresolved %> </p>
<p>Total Unsolved Software Incidents: <%= softwareUnresolved %> </p>
<p>Total Unsolved Hardware Incidents: <%= hardwareUnresolved %> </p>
<p>Total Unsolved Email Incidents: <%= emailUnresolved %> </p>
<p>Total Unsolved Account Incidents: <%= accountUnresolved %> </p>
<br/>
<p>Total Resolved Network Incidents Within Last 7 Days: <%= networkResolved %></p>
<p>Total Resolved Software Incidents Within Last 7 Days: <%= softwareResolved %></p>
<p>Total Resolved Hardware Incidents Within Last 7 Days: <%= hardwareResolved %></p>
<p>Total Resolved Email Incidents Within Last 7 Days: <%= emailResolved %></p>
<p>Total Resolved Account Incidents Within Last 7 Days: <%= accountResolved %></p>
<br/>
<% stressRate = Double.valueOf(unsolvedIncidents) / (Double.valueOf(totalStaff) * Double.valueOf(totalIncidents)); %>
<p>Stress Rate: <%= stressRate %></p>
    <div class="parent">
        <a href="/c3374676_c3375558_c3380667_FinalProject/homepage.jsp" class="iTSelection">Home Page</a><br/>
    </div>
</div>
</body>
</html>
