<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Page</title>
<style>
   form{
     margin-top: 100px;
   }
   input{
      width:400px;
      height:40px;
   }
</style>
</head>
<body>
     <center>
        <form name="frm" action="EmployeeController.jsp" method="POST">
            <input type="text" name="id" value=""><br><br>
            <input type="text" name="name" value=""><br><br>
            <input type="text" name="sal" value=""><br><br>
            <input type="submit" name="s" value="Add Employee" ><br><br>
            
        </form>
     </center>
</body>
</html>