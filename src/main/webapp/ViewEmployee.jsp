<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="org.techhub.*" %>
    <%@page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Employee</title>
</head>
<body>
     <jsp:useBean id="r" class="org.techhub.Employee">
       <jsp:setProperty name="r" property="*"></jsp:setProperty>
     </jsp:useBean>
     <center>
     <table border="3" width="65%">
    <form name="frm" action="ViewEmployee.jsp" method="get">
       <tr>
          <td>ID</td>
          <td>NAME</td>
          <td>SALARY</td>
          <td>DELETE</td>
          <td>UPDATE</td>
       </tr>
       <%
          DBConfig d=new DBConfig();
          List<Employee>list=d.getEmployee();
          for(Employee e:list)
          {
       %>
         <tr>
            <td><%=e.getId() %></td>
            <td><%=e.getName()%></td>
            <td><%=e.getSal()%></td>
            <td><a href="DeleteEmployee.jsp?id=<%=e.getId()%>">Delete</a></td>
            <td><a href="UpdatePage.jsp?id=<%=e.getId()%>&name=<%=e.getName()%>&sal=<%=e.getSal()%>">Update</a></td> 
         </tr>
       <%
          }
       %>
    </form>
    </table>
    </center>
</body>
</html>