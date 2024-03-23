package org.techhub;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DBConfig {

	private Connection conn;
	private PreparedStatement stmt;
	private ResultSet rs;
	List<Employee>list;
	public DBConfig() throws ClassNotFoundException, SQLException
	{
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/practice","root","Aai@8530");
		}
		catch(Exception ex)
		{
			System.out.println("Exception is "+ex);
		}
	}
	public boolean isAdd(Employee e)
	{
		try
		{
			stmt=conn.prepareStatement("insert into employeee values(?,?,?)");
			stmt.setInt(1,e.getId());
			stmt.setString(2,e.getName());
			stmt.setInt(3,e.getSal());
		    int val=stmt.executeUpdate();
		    if(val>0)
		    {
		    	return true;
		    }
		    else
		    {
		    	return false;
		    }
		}
		catch(Exception ex)
		{
			System.out.println(ex);
			return false;
		}	
	}
	public List<Employee> getEmployee()
	{
		List<Employee>list=new ArrayList();
		try {
			stmt=conn.prepareStatement("select * from employeee");
			rs=stmt.executeQuery();
			while(rs.next())
			{
				Employee e=new Employee();
				e.setId(rs.getInt(1));
				e.setName(rs.getString(2));
				e.setSal(rs.getInt(3));
				list.add(e);
			}
			return list;
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
		return null;
	}
	public boolean deleteById(int id)
	{
		try {
			stmt=conn.prepareStatement("delete from employeee where id=?");
			stmt.setInt(1, id);
			int v=stmt.executeUpdate();
			return v>0?true:false;
		}
		catch(Exception ex)
		{
			System.out.println(ex);
			return false;
		}
		
	}
	public boolean isUpadate(Employee e)
	{
		try {
			stmt=conn.prepareStatement("update employeee set name=?,sal=? where id=?");
			stmt.setString(1,e.getName());
			stmt.setInt(2,e.getSal());
			stmt.setInt(3,e.getId());
			int v=stmt.executeUpdate();
			return v>0?true:false;
		}
		catch(Exception ex)
		{
			System.out.println(ex);
			
		}
		return false;
	}
}
