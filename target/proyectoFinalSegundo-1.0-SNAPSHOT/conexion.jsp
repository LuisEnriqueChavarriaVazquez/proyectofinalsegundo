
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%
    Connection conex=null;
    Statement sql = null;
    ResultSet data = null;
    try{
        Class.forName("com.mysql.jdbc.Driver");
        conex=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/mydb","root","root");
        sql = conex.createStatement();
        out.println("Conexion lista");
    }catch(Exception e){
        out.print("Error en la conexion" + e);
    }
%>