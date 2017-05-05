<%-- 
    Document   : listaProducto
    Created on : 04-may-2017, 12:12:24
    Author     : ALUMNO IG
--%>

<%@page import="java.io.EOFException"%>
<%@page import="clases.*"%>
<%@page import="java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/cssList.css" rel="stylesheet" type="text/css">
        <title>Leroy Merlin Lista Productos</title>
    </head>
    <body>
        <div>
            <img alt="logo Leroy Merlin" src="img/leroy.jpg" width="50%">
            <h1>Lista Productos</h1>
            <%@include file="html/nav.html" %>
            <table>
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Descripción</th>
                    <th>Precio</th>
                </tr>
                <%
                    ObjectInputStream ois;
                    String respuesta = "";

                    Fichero f = new Fichero("productos.obj", "rb");
                    Producto aux = (Producto) f.leerObjeto();
                    while (aux != null) {

                        respuesta += "<tr>\n"
                                + "<td>" + aux.getId() + "</td>\n"
                                + "<td>" + aux.getNombre() + "</td>\n"
                                + "<td>" + aux.getDescripcion() + "</td>\n"
                                + "<td>" + aux.getPrecio() + "</td>\n"
                                + "</tr>\n";

                        aux = (Producto) f.leerObjeto();
                    }

                    f.close();
                %>
                <%=respuesta%>
            </table>
        </div>
    </body>
</html>
