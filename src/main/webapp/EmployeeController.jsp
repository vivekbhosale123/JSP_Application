<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="org.techhub.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Controller</title>
</head>
<body>
   <jsp:useBean id="r" class="org.techhub.Employee">
       <jsp:setProperty name="r" property="*"></jsp:setProperty>
   </jsp:useBean>
   
   <%
       DBConfig d=new DBConfig();
       boolean b=d.isAdd(r);
       if(b)
       {
    	  out.println("Added successfully");
       }
       else
       {
    	  out.println("Not Added successfully"); 
       }
   %>
</body>
</html>