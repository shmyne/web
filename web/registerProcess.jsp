<%--
  Created by IntelliJ IDEA.
  User: DELL LATITUDE 3380
  Date: 10/05/2020
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<%@page import="model.User"%>
<jsp:useBean id="user" class="model.User"/>

<jsp:setProperty property="*" name="user"/>

<%
    User data= null;
    try {
        data = User.create(user);
    } catch (Exception e) {
        e.printStackTrace();
    }
    if(data != null){
        out.println("You are successfully logged in "+data.name);
        session.setAttribute("session",data);
    }
    else
    {
        out.print("Sorry, email or password error");
%>
<jsp:include page="index.jsp"></jsp:include>
<%
    }
%>
</body>
</html>
