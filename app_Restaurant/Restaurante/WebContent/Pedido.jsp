<%@page import="java.util.Scanner"%>
<%@page import="Modelo.Cliente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ page import="controlador.*"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="ISO-8859-1">
        <LINK REL=StyleSheet HREF="../estilo/estilos.css" TYPE="text/css">
        <link href="estilo/estilos.css" rel="stylesheet" type="text/css"/>
        <title>PEDIDO</title>
    </head>
    <body>

        <form action="ingresar.jsp" method="post" id="form">
            <h1 id="titulo">Pedido</h1>
            <br></br>
            <h2 id="etiquetas">Codigo de pedido:
                <input type="text" name="codigo" required></h2> 

            <h2 id="etiquetas">Seleccionar Plato:
            <select name="ad">
                <option selected> ---</option>
                <option value="plato1">Hornado</option>
                <option value="plato2">Ceviche</option>
                <option value="plato3">Encebollado</option>
            </select></h2>

            <h2 id="etiquetas">Seleccionar Mesa:


            <%
                int[] arre = new int[100];
                int j = 0;
                for (Cliente cl : Datoss.listado) {
                    arre[j] = cl.getNumMesa();
                    j += 1;
                }
            %>




         <select name="mesa">
                <%                for (int l = 0; l < 5; l++) {
if(l==0){
     out.println("<option selected>"+ "--" +"</option>");

}
                        if (l != arre[0] && l != arre[1] && l != arre[2] && l != arre[3]) {

                            out.println("<option value='" + l + "' >" + l + "</option>");
                        }
                    }


                %>


            </select></h2>
            <h2 id="etiquetas">Cantidad:
                <input type="text" name="cantidad" required=""></h2> 
            <br></br>
            <h1 id="titulo">Cliente</h1>
            <br></br>
            <h2 id="etiquetas">Nombre:
                <input id="etiquetasizquierda" type="text" name="nombre" required autofocus></h2> 
            <h2 id="etiquetas">RUC / C.I. : 
                <input type="text" name="cd" required autofocus></h2>
            <br>
     
            <input type="reset" value="LIMPIAR DATOS" id="limpiar"/>
            <br>
            <input type="submit" value="ENVIAR" id="enviar" />
            <input type="button" value="MENU PRINCIPAL" onclick="redireccionamiento()" id="menu"/>
        

        </form>
        <script type="text/javascript">
            function redireccionamiento() {
                location.href = "0start.html";
            }
        </script>
    </body>
</html>