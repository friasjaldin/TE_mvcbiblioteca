<%@page import="com.emergentes.modelo.libro"%>
<%@page import="com.emergentes.modelo.libroDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            libroDAO lista = (libroDAO) session.getAttribute("gestor");
        %>
        <h1>LISTADO</h1>
        <p><a href="../Principal?op=nuevo">Nuevo</a></p>
        <%
            if (lista.getLibros().size() > 0) {
        %>
        <table border="2">
            <tr>
                <th>Id</th>
                <th>Titulo</th>
                <th>Autor</th>
                <th>Estado</th>
                <th></th>
                <th></th>
            </tr>
            <%
                for (libro item : lista.getLibros()) {
            %>
            <tr>
                <td><%= item.getId()%></td>
                <td><%= item.getTitulo()%></td>
                <td><%= item.getAutor()%></td>
                <td><%= item.getEstado()%></td>
                <td><a href="../Principal?op=editar$id=<%=item.getId()%>">editar</a></td>
                <td><a href="../Principal?op=eliminar$id=<%=item.getId()%>">eliminar</a></td>
            </tr>
            <%
                }
            %>
        </table>
        <%
            } else {
                out.println("<p>no existe registro");
            }

        %>
    </body>
</html>
