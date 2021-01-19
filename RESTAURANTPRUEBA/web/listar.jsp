<%-- 
    Document   : listar
    Created on : 15/01/2021, 07:58:22 AM
    Author     : TOSHIBA
--%>

<%@page import="java.util.Scanner"%>
<%@page import="controlador.*"%>
<%@page import="Modelo.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar</title>
    </head>
    <BR><BR>
    <body>  <form action="listar.jsp" method="post">
           <center>
        <table border="1">
            <thead>
                <tr>
                    <th>num Mesas</th>

                </tr>
            </thead>
            <tbody>
         
                <%
                    int i = 0;
                    for (Cliente cl : Datoss.listado) {
                        i += 1;
                %>
                <tr>
                    <td ><%out.print("<center>"+cl.getNumMesa() + " " + i);%></td>

                </tr>
                <% }%>
         </tbody>
        </table>
        <br/>
      
 
        <select name="entregaP">
            <%

                int[] arre = new int[100];
                int j = 0;
               
                for (Cliente cl : Datoss.listado) {
   j += 1;
 
 
                    arre[j] = cl.getNumMesa();
                    out.println("<option value='" + arre[j] + "' >" + arre[j] + "</option>");
             
                }
                
    

            %>
</select>
<h2 id="etiquetas">SELECCIONAR MESA SATISFECHA:</h2> 
<input type="text" name="mesaok" >
<input type="submit" value="Enviar" name="enviar"  >
        
      
            <br><br>
<h2 id="etiquetas">MESAS DISPONIBLES:</h2> 
        <select name="entrega2">
            
            <%
               
                for ( int l = 1; l < 6; l++) {

 /*if(request.getParameter("enviar")!=null){
                 String mesa= request.getParameter("mesaok");
                Datoss.listado.remove(mesa);}*/
 
            if (l != arre[1] && l != arre[2] && l != arre[3] && l != arre[4]) {

               out.println("<option value='" + l + "' >" + l + "</option>");
            }
            }
        
            
                


            %>


        </select><br>

        <BR><% 

     
          if(request.getParameter("mesaok")!=null){
                            int mesa=Integer.parseInt(request.getParameter("mesaok")) ;
                out.println(" <br>"+mesa);
                }
           %></center>  </form>

    </body>
</html>
