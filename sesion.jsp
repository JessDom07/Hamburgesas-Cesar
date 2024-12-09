<%-- 
    Document   : sesion
    Created on : 28/11/2024, 04:40:45 PM
    Author     : domin
--%>
<%@page import="java.sql.*"%>
<% 
String Con=request.getParameter("con");
String Corr=request.getParameter("cor");
boolean error=false;
String mensajeError="";

Connection con=null;
Statement stm=null;
ResultSet res=null;
               try
               {
                 Class.forName("com.mysql.jdbc.Driver");
                 con=DriverManager.getConnection("jdbc:mysql://localhost/bd_hamburguesas?user=root&password=");
                
                stm=con.createStatement();
                res=stm.executeQuery("select * from t_admin where Adm_Cont='"+Con+"' && Adm_Usua='"+Corr+"' ");
                if(res.next())
                {
                    response.sendRedirect("tablas.jsp");
                }
                if(error=true)
                {
                    response.sendRedirect("Inicio_de_sesion.jsp");
                }
                stm.close();
                res.close();
                con.close();
               }
               catch (Exception e)
               {
                   
               }
%>