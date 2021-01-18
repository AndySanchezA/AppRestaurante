<%-- 
    Document   : LogIn
    Created on : 27/07/2020, 05:33:37 PM
    Author     : TOSHIBA
--%>

<%@page import="controlador.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="estilo/animate.css" rel="stylesheet" type="text/css"/>
        <link href="estilo/estilosBordes.css" rel="stylesheet" type="text/css"/>
           <link href="estilo/estilos.css" rel="stylesheet" type="text/css"/>
    </head>
  <style>
            body{
            
            }
            h1{
                text-align: center;
                    font-family: Ink Free;
          
            }table{
             color: white;
                margin: auto;
            }p{
                text-align: center;
                font-family: Ink Free;
          
                font-weight: 500;
            }
        </style>
       <body bgcolor="#A9A9F5">
          
           
       
           <br><br>
        <form  action="LogIn.jsp" method="post" id="formespacio">
             <br><p><b><h1><center class="animated wobble duracion"><font class="estilo" > <div class="container"><DIV class="animated bounce slower">
                                    
                                
                                <span style="--l: 'e';">¡A</span>                     
                                <span style="--l: 'e';">N</span>
                                <span style="--l: 'd';">D</span>
                                <span style="--l: 'l';">I</span>
                                <span style="--l: '0!';">N</span>
                                <span style="--l: 'H!';">O!</span>
                                        <span style="--l: '¡H';"> RESTAURANT</span>
                            </DIV></div></font></center>  </H1></b></P>

            <br>
             <hr>
    <h1><center>Iniciar Sesion </center></h1>
    <hr><br>
            <table border="4" >
                <tr>  <th>  <label>Usuario</label></th>
                <td><input type="text" name="user" placeholder="Ingrese el Usuario" required autofocus></td>
    </tr>
           <tr>  <th> <label>Contraseña</label</th>
               <td> <input type="password" name="pass" placeholder="Ingrese la contraseña" required></td>
            </table>
    <br><br><br><br>
    <center><input type="submit" name="enviar" value="Iniciar Sesion" id="enviarlogin"></center>
        </form>


        <%
            
            HttpSession sesion1 = request.getSession();
       //     Datos d = new Datos();
         //   d.borrarDatosPropiedadArraylist();
            if (request.getParameter("enviar") != null) {
                String usuario = request.getParameter("user");
                String contra = request.getParameter("pass");
                sesion1.setAttribute("user", usuario);
                sesion1.setAttribute("pass", contra);
                if ((usuario.equals("sa") && contra.equals("12345")) || (usuario.equals("admn") && contra.equals("abc")) || (usuario.equals("clie") && contra.equals("123")) || (usuario.equals("op") && (contra.equals("567")))) {

           //         Conexion.obtener(usuario, contra);
                    response.sendRedirect("0start.html");

                } else {

                    out.println("<br><center>" + ".\t\t\tNo existe el usuario o contraseña incorrecta");
                    
                }
            }
        %>
    </body>
</html>
