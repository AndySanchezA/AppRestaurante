<%-- 
    Document   : listar
    Created on : 15/01/2021, 07:58:22 AM
    Author     : TOSHIBA
--%>


<%@page import="javafx.scene.web.WebEvent"%>
<%@page import="javafx.scene.control.Alert"%>
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
    <body>  <form action="listarr.jsp" method="post">
           <center>
               <h2 id="etiquetas">MESAS OCUPADAS:</h2> 
        <table border="1">
            <thead>
                <tr>
                    <th>#</th>
   <th># MESA</th>
                </tr>
            </thead>
            <tbody>
         
                <%  
                     if(request.getParameter("mesaok")!=null){
                         try{
                        int mesa=Integer.parseInt(request.getParameter("mesaok")) ;
                        
                int rr= 0; 
                for (Cliente cl : Datoss.listado) { 
                  
                  if(mesa==cl.getNumMesa()){
                   Datoss.listado.remove(rr);   
                   break;
                  }
                  rr+=1;
                  } }catch(NumberFormatException ex){
             %>
            <script>
alert("solo numeros");                
                
            </script>
                
                <%
                     }
                     }
                    int i = 0;
                    for (Cliente cl : Datoss.listado) {
                        
                %>
                <tr>
                   

                    <td><center><%out.print(i);%></td>
                     <td><center><%out.print(cl.getNumMesa());%></td>
                </tr> 
                <% i += 1;}%>
         </tbody>
        </table>
        <br/>
      
 
        <select name="entregaP">
            <%

                int[] arre = new int[100];
                int j = 0;
                out.println("<option value='" +""+ "' >" +"//" + "</option>");
                for (Cliente cl : Datoss.listado) {
 
 
  
                    arre[j] = cl.getNumMesa();
                    out.println("<option value='" + arre[j] + "' >" + arre[j] + "</option>");
              j += 1;
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
              
                for ( int l = 0; l < 5; l++) {

         
 
            if (l != arre[0] && l != arre[1] && l != arre[2] && l != arre[3] && l!=0) {

               out.println("<option value='" + l + "' >" + l + "</option>");
            }
            }
       
            
                


            %>


        </select><br>

        <BR><% 

     out.print("<br/><center><a href='Pedido.jsp'>Ingresar Datos y Pedidos.</a>");
          
                 //out.println(" <br>"+mesa);
           %></center>  </form>

    </body>
</html>
