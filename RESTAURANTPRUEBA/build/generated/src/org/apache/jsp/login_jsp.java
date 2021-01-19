package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import controlador.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link href=\"estilo/animate.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"estilo/estilosBordes.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("           <link href=\"estilo/estilos.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    </head>\n");
      out.write("  <style>\n");
      out.write("            body{\n");
      out.write("            \n");
      out.write("            }\n");
      out.write("            h1{\n");
      out.write("                text-align: center;\n");
      out.write("                    font-family: Ink Free;\n");
      out.write("                       color: white;\n");
      out.write("            }table{\n");
      out.write("             color: white;\n");
      out.write("                margin: auto;\n");
      out.write("            }p{\n");
      out.write("                text-align: center;\n");
      out.write("                font-family: Ink Free;\n");
      out.write("          \n");
      out.write("                font-weight: 500;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("       <body bgcolor=\"#A9A9F5\">\n");
      out.write("          \n");
      out.write("           \n");
      out.write("       \n");
      out.write("           <form  action=\"login.jsp\" method=\"post\" id=\"formespacio2\" class=\"animated slideInDown delay-3s\" id=\"altura\">\n");
      out.write("             <br><p><h1><center class=\"animated wobble duracion\"><font class=\"estilo\" > <div class=\"container\"><DIV class=\"animated bounce slower\">\n");
      out.write("                                    \n");
      out.write("                                \n");
      out.write("                                <span style=\"--l: 'e';\">¡A</span>                     \n");
      out.write("                                <span style=\"--l: 'e';\">N</span>\n");
      out.write("                                <span style=\"--l: 'd';\">D</span>\n");
      out.write("                                <span style=\"--l: 'l';\">I</span>\n");
      out.write("                                <span style=\"--l: '0!';\">N</span>\n");
      out.write("                                <span style=\"--l: 'H!';\">O!</span>\n");
      out.write("                                        <span style=\"--l: '¡H';\"> RESTAURANT</span>\n");
      out.write("                            </DIV></div></font></center>  </H1></b></P>\n");
      out.write("<br><center > <marquee direction=\"left\" behavior =\"alternate\"  width=\"100%\"  class=\"estilo2\"  scrollamount=\"5 px\">\n");
      out.write("                    <marquee direction=\"up\" behavior=\"alternate\" height=\"30px\">\n");
      out.write("                        <marque direction=\"down\" behavior=\"alternate\" height=\"20px\" class=\"container\"> \n");
      out.write("                            <span style=\"--l: '¡H';\">¡W</span>\n");
      out.write("                            <span style=\"--l: 'e';\">E</span>\n");
      out.write("                            <span style=\"--l: 'l';\">L</span>\n");
      out.write("                            <span style=\"--l: 'l';\">C</span>\n");
      out.write("                            <span style=\"--l: '0!';\">O</span>\n");
      out.write("                            <span style=\"--l: 'e!';\">M</span>\n");
      out.write("                            <span style=\"--l: '0!';\">E!</span>\n");
      out.write("\n");
      out.write("                        </marque></marquee>\n");
      out.write("                </marquee></center>\n");
      out.write("\n");
      out.write("\n");
      out.write("            <br>\n");
      out.write("             <hr>\n");
      out.write("    <h1><center>Iniciar Sesion </center></h1>\n");
      out.write("    <hr><br>\n");
      out.write("            <table border=\"4\" >\n");
      out.write("                <tr>  <th>  <label>Usuario</label></th>\n");
      out.write("                    <td><input type=\"text\" name=\"user\" placeholder=\"Ingrese el Usuario\" autocomplete=\"off\" required ></td>\n");
      out.write("    </tr>\n");
      out.write("           <tr>  <th> <label>Contraseña</label</th>\n");
      out.write("               <td> <input type=\"password\" name=\"pass\" placeholder=\"Ingrese la contraseña\" required></td>\n");
      out.write("            </table>\n");
      out.write("    <br><br><br><br>\n");
      out.write("    <center><input type=\"submit\" name=\"enviar\" value=\"Ingresar\" id=\"enviarlogin\"></center>\n");
      out.write("        </form>\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");

            
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
        
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
