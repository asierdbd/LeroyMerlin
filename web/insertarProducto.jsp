<%-- 
    Document   : insertarProducto
    Created on : 04-may-2017, 12:12:16
    Author     : ALUMNO IG
--%>
<%@page import="clases.*"%>
<%@page import="java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/cssInsert.css" rel="stylesheet" type="text/css">
        <title>Leroy Merlin Insertar Productos</title>
    </head>
    <%
        String id = request.getParameter("id");
        String nombre = request.getParameter("nombre");
        String descripcion = request.getParameter("descripcion");
        String precio = request.getParameter("precio");
        String respuesta;

        try {
            Fichero f = new Fichero("productos.obj", "ab");
            if (nombre == null || descripcion == null || id == null || precio == null) {
                respuesta = "Alguno de los campos quedó sin rellenar";
            } else {
                f.escribirObjeto(new Producto(Integer.parseInt(id), nombre, descripcion, Double.parseDouble(precio)));
                respuesta = "Se insertó con éxito";

            }
            f.close();
        } catch (NumberFormatException nfe) {
            respuesta = "Error en los numeros";
        }


    %>
    <body>
        <div>
            <img alt="logo Leroy Merlin" src="img/leroy.jpg" width="50%">
            <h1>Inserta Producto</h1>
            <%@include file="html/nav.html" %>
            <h2>Formulario</h2>
            <form action="insertarProducto.jsp" method="POST">
                ID:<input type="text" name="id"><br>
                Nombre:<input type="text" name="nombre"><br>
                Descripción:<input type="text" name="descripcion"><br>
                Precio:<input type="text" name="precio"><br>
                <input type="submit" value="Enviar" id="enviar">
                <input type="reset" value="Reset" id="reset">
            </form>
            <p><%=respuesta%></p>
        </div>
    </body>
</html>
