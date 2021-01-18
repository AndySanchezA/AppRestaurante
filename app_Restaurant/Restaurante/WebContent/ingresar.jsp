<%-- 
    Document   : ingresar
    Created on : 7/05/2020, 10:51:29 AM
    Author     : TOSHIBA
--%>


<%@page import="controlador.*"%>
<%@page import="Modelo.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <br><br><br>    <br><br><br>
    <body>
        <%
        Cliente cl=new Cliente();

        cl.setNumMesa(Integer.parseInt(request.getParameter("mesa")));
Datoss.listado.add(cl);

out.print("<h1><center>ELEMENTO INGRESADO</h1>");
out.print("<br/><center><a href='Pedido.jsp'>Volver al menu principal</a>");
          
 //response.sendRedirect("Pedido.jsp");
       %>
        
     
      
        
    </body>
</html>
