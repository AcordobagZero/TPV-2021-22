<%-- 
    Document   : listar
    Created on : 15-nov-2021, 17:36:33
    Author     : DAW-A
--%>

<%@page import="java.util.List"%>
<%@page import="modelo.Productos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://use.fontawesome.com/2a534a9a61.js"></script>
    </head>
    <body>
        <h1>Listado de productos</h1>
        <table class="table">
        <%
                List<Productos> listaProductos = (List<Productos>) request.getAttribute("listado");
                
                for(Productos prod : listaProductos){
                        out.print("<tr>");
                        out.print("<td>"+prod.getNombre()+"</td>");
                        out.print("<td>"+prod.getPrecio()+" €</td>");
                        out.print("<td>"+prod.getCategoria()+"</td>");
                        %><td><a href="Servlet?op=borrar&id=<%=prod.getId()%>"><i class="icono-color fa fa-trash" aria-hidden="true"></i></a></td> <%
                        out.print("</tr>");
                    }
            %>
        </table>
    </body>
</html>
