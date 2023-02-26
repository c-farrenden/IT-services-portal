<%--
  Created by IntelliJ IDEA.
  User: cfarr
  Date: 16/05/2022
  Time: 4:37 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Register a User</h1>

<s:form action="register">
  <s:textfield name="fName" label="First Name" />
  <s:textfield name="lName" label="Last Name" />
  <s:textfield name="email" type="email" label="Email Address" />
  <s:textfield name="username" label="username" />
  <s:textfield name="pNumber" label="Your Phone Number" />
  <s:textfield name="password" label="Password" />
  <s:textfield name="passwordConfirm" label="Confirm Password" />
  <s:reset />
  <s:submit />
</s:form>

</body>
</html>
