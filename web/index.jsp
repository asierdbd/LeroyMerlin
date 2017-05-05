<%-- 
    Document   : index
    Created on : 04-may-2017, 12:05:18
    Author     : ALUMNO IG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style.css" rel="stylesheet" type="text/css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <title>Leroy Merlín Home</title>
    </head>
    <body>
        <div>
            <img alt="logo Leroy Merlin" src="img/leroy.jpg" width="50%">
            <h1>Leroy Merlín</h1>
            <h2>Opciones disponibles</h2>
            <ul>
                <li><a href="listaProducto.jsp">Listado de productos</a></li>
                <li><a href="insertarProducto.jsp">Añadir producto</a></li>
                <li id="eliminarLi">Eliminar lista de productos</li>
                <input type="button" value="Eliminar Lista" id="eliminar">
            </ul>
        </div>
        <script src="js/js.js"></script>
    </body>
</html>
