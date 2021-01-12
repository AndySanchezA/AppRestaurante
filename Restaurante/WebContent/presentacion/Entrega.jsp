<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="controlador.*"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<LINK REL=StyleSheet HREF="../estilo/estilos.css" TYPE="text/css">
<title>Entrega de Plato</title>
</head>
<body>
<h1 id="titulo">Entrega de platos</h1>
<%
		String entregaP = request.getParameter("entregaP");

	if (entregaP != null) {
		int entre = Integer.parseInt(entregaP);
		ArrayList<Plato> listaPlatos = Plato.getLista_platos();
	%>
	<Table border="1" id="form-a">
		<tr>
			<th>Numero de mesa</th>
			<th>Cantidad</th>
			<th>Plato</th>
		</tr>
		<tr>
			<td><%=listaPlatos.get(entre).getPos()%></td>
			<td><%=listaPlatos.get(entre).getCantidad_plato()%></td>
			<td><%=listaPlatos.get(entre).getNombre_plato()%></td>
			
		</tr>
	</Table>
<%
		} else {

		Plato p1= new Plato(1,"Hornado",2);
		Plato p2= new Plato(2,"Ceviche",3);
		Plato p3= new Plato(3,"Encebollado",1);
		ArrayList<Plato> listaPlatos = Plato.getLista_platos();
	%>
<form action="Entrega.jsp" method="get" id="form">
		<h2 id="etiquetas">Seleccione Nº mesa:</h2>
		<br></br>
		<select name="entregaP">
			<%
				for (int i = 0; i < listaPlatos.size(); i++) {
				out.println("<option value='" + i + "' >" + listaPlatos.get(i).getPos() + "</option>");
			}
			%>


		</select>
<br></br>
		<p>
			<input type="submit" value="Enviar" />
		</p>
	</form>

	<%
		}
	%>
</body>
</html>