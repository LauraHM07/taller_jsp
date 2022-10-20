<%@ page language='java' contentType="text/html" %>

<%@page import="com.laura.taller.model.Vehiculo"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

<%@page session="true" %>

<%
    String matricula = request.getParameter("matricula");
    String marca = request.getParameter("marca");
    String modelo = request.getParameter("modelo");
    String color = request.getParameter("color");

    Vehiculo vehiculo = new Vehiculo();
    vehiculo.setMatricula(matricula);
    vehiculo.setMarca(marca);
    vehiculo.setModelo(modelo);
    vehiculo.setColor(color);

    List<Vehiculo> vehiculos = (List) session.getAttribute("vehiculos");

    vehiculos.remove(vehiculo);
    vehiculos.add(vehiculo);

    session.setAttribute("vehiculos", vehiculos);

    response.sendRedirect("vehiculos.jsp");

%>