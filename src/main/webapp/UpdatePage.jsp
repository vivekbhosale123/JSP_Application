<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
      <%
        int id=Integer.parseInt(request.getParameter("id"));
        String name=request.getParameter("name");
        int sal=Integer.parseInt(request.getParameter("sal"));
       %>
        <form name="frm" action="FinalUpdate.jsp" method="POST">
            <input type="text" name="id" value="<%=id%>" ><br><br>
            <input type="text" name="name" value="<%=name %>" ><br><br>
            <input type="text" name="sal" value="<%=sal %>" ><br><br>
            <input type="submit" name="s" value="Update Employee" ><br><br>
        </form>
     </center>
</body>
</html>