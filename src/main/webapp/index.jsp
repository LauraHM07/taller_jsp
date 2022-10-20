<%@ page language="java" contentType="text/html" %>

<%@page import="com.laura.taller.model.Vehiculo"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

<%@page session="true" %>

<%
    Vehiculo vehiculo = new Vehiculo();
    vehiculo.setMatricula("1111");
    vehiculo.setMarca("Marca 1");
    vehiculo.setModelo("Modelo 1");
    vehiculo.setColor("Color 1");

    Vehiculo vehiculo2 = new Vehiculo();
    vehiculo2.setMatricula("2222");
    vehiculo2.setMarca("Marca 2");
    vehiculo2.setModelo("Modelo 2");
    vehiculo2.setColor("Color 2");

    Vehiculo vehiculo3 = new Vehiculo();
    vehiculo3.setMatricula("3333");
    vehiculo3.setMarca("Marca 3");
    vehiculo3.setModelo("Modelo 3");
    vehiculo3.setColor("Color 3");

    List<Vehiculo> vehiculos = new ArrayList<Vehiculo>();
    vehiculos.add(vehiculo);
    vehiculos.add(vehiculo2);
    vehiculos.add(vehiculo3);

    session.setAttribute("vehiculos", vehiculos);
%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Instituto</title>
</head>
<body>
    <h1>Menu principal</h1>

    <p><a href="vehiculos/vehiculos.jsp">Vehiculos</a></p>
</body>
</html>