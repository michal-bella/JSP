<%@ page import="com.uloha.Produkt" %><%--
  Created by IntelliJ IDEA.
  User: Keys1
  Date: 21. 3. 2018
  Time: 23:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>spracuj</title>
    <meta http-equiv="refresh" content="3; URL='zobraz.jsp'" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>

<%
    Produkt produkt = new Produkt();

    produkt.setRozmerX(request.getParameter("rozmerX"));
    produkt.setRozmerY(request.getParameter("rozmerY"));
    produkt.setMaterial(request.getParameter("material"));
    produkt.setDatum(request.getParameter("datum"));
    produkt.setCena(request.getParameter("cena"));
    produkt.setPoznamka(request.getParameter("poznamka"));



%>

<table class="table">
    <thead>
    <tr>
        <th scope="col">Rozmer X</th>
        <th scope="col">Rozmer Y</th>
        <th scope="col">Materiál</th>
        <th scope="col">Dátum</th>
        <th scope="col">Cena</th>
        <th scope="col">Poznámka</th>

    </tr>
    </thead>
    <tbody>
    <tr>
        <td><%out.print(produkt.getRozmerX());%></td
        <td><%out.print(produkt.getRozmerY());%></td>
        <td><%out.print(produkt.getMaterial());%></td>
        <td><%out.print(produkt.getDatum());%></td>
        <td><%out.print(produkt.getCena());%></td>
        <td><%out.print(produkt.getPoznamka());%></td>


    </tr>
    </tbody>
</table>


</body>
</html>
