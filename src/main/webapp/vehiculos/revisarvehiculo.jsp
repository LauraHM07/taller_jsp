<%@ page language='java' contentType="text/html" %>

<%@page import="com.laura.taller.model.Vehiculo"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

<%@page session="true" %>

<%
    String matricula = request.getParameter("matricula");

    // no funciona 
    for(Vehiculo vehiculo: vehiculos) {
        if((matricula.compareTo(vehiculo.getMatricula())) == 0) {
            vehiculo.setRevisado("Y");
        }
    }

    session.setAttribute("vehiculos", vehiculos);

    response.sendRedirect("vehiculos.jsp");
%>