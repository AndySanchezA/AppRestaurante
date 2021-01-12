<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="controlador.*"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="ISO-8859-1">
<LINK REL=StyleSheet HREF="../estilo/estilos.css" TYPE="text/css">
<title>PEDIDO</title>
</head>
<body>
<form action="entrega.jsp" method="post" id="form">
<h1 id="titulo">Pedido</h1>
<br></br>
<h2 id="etiquetas">Codigo de pedido:</h2> 
<input type="text" name="codigo">

<h2 id="etiquetas">Seleccionar Plato:</h2>
<select name="ad">
<option selected> ---</option>
<option value="plato1">Hornado</option>
<option value="plato2">Ceviche</option>
<option value="plato3">Encebollado</option>
</select>

<h2 id="etiquetas">Seleccionar Mesa:</h2>
<select name="ad">
<option selected> ---</option>
<option value="mesa1">1</option>
<option value="mesa2">2</option>
<option value="mesa3">3</option>
</select>

<h2 id="etiquetas">Cantidad:</h2> 
<input type="text" name="cantidad">
<br></br>
<h1 id="titulo">Cliente</h1>
<br></br>
<h2 id="etiquetas">Nombre:</h2> 
<input type="text" name="cantidad">
<h2 id="etiquetas">RUC / C.I. : </h2>
<input type="text" name="cantidad">
<br></br>
<input type="submit" value="Aceptar" class="btn" />
<input type="reset" value="Otro" class="btn"/>

</form>
</body>
</html>