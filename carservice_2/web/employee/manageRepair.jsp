<%@ page import="com.carservice.model.Repair" %>
<%@ page import="com.carservice.controller.dao.RepairImplement" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="../includes/header.jsp" %>
<title>Manage - Repair</title>
</head>
<body>
<%@include file="/employee/includes/navbar.jsp" %>
<%
    if (session.getAttribute("empl_email") == null) {
        response.sendRedirect("loginEmpl.jsp");
        return;
    }
%>
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <a href="/logOutPage.jsp">Odhlas
                sa:</a> <%out.println(" " + (String) session.getAttribute("empl_email"));%>
        </div>
    </div>
</div>
<%
    int id_repair = Integer.parseInt(request.getParameter("id_repair"));
    Repair repair = new Repair();
    RepairImplement repairDao = new RepairImplement();

    repair = repairDao.getRepairWhereId(id_repair);

    ArrayList<Repair> repairStatuss = new ArrayList<>();
    repairStatuss = repairDao.getAllStatusRepair();
%>
<div class="container">
    <div class="row">
        <div class="col-lg-6">
        <h1>Edit Repair - <%=repair.getId_repair() %>
        </h1>
        <h3>Sign of Car in Garage: <%=repair.getMotor_vehicle_licence_plate()%>
        </h3>
        <h4>client_email:  <%=repair.getClient_email()%></h4>

            <form action='/updateRepair' method='post'>
                <div class="form-group">
                    <input type='hidden' name='id_repair' value='<%=repair.getId_repair() %>'/>
                </div>
                <div class="form-group">

                    <input type='hidden' class="form-control"  name='client_email'
                           value='<%=repair.getClient_email()%> '/>
                </div>
                <div class="form-group">
                    car_brand:
                    <input type='hidden' class="form-control" name='car_brand' value='<%=repair.getCar_brand()%> '/>
                </div>
                <div class="form-group">
                    car_model
                    <input type='hidden' class="form-control" name='car_model' value='<%=repair.getCar_model()%>'/>
                </div>
                <div class="form-group">
                    motor_vehicle_licence_plate:
                    <input type='hidden' class="form-control" name='motor_vehicle_licence_plate'
                           value='<%=repair.getMotor_vehicle_licence_plate()%>'/>
                </div>
                <div class="form-group">
                    vin_number:
                    <input type='hidden' class="form-control" name='vin_number' value='<%=repair.getVin_number()%>'/>
                </div>
                <div class="form-group">
                    what_repair:
                    <input type='text' class="form-control" name='what_repair' value='<%=repair.getWhat_repair()%>'/>
                </div>

                <div class="form-group">
                    <select class="form-control" id="status_repair" name="status_repair">
                        <%
                            for (int i = 0; i < repairStatuss.size(); i++) {
                        %>
                        <option value="<%=repairStatuss.get(i).getId_status()%>"><%=repairStatuss.get(i).getStatus()%></option>

                        <% } %>
                    </select>
                </div>
                <%--<div class="form-group">
                    Status:
                    <input type='text' class="form-control" name='status_repair'
                           value='<%=repair.getStatus_repair()%>'/>
                </div>--%>
                <%--<input type='submit' value='Edit & Save ' />--%>
                <button type="submit" class="btn btn-primary">Save and Edit</button>

            </form>
        </div>
        <div class="col-lg-6">
            <h2>Aktualny status</h2>
            <strong><%=repair.getStatus_repair()%></strong>
            <h3>Vysvetlenie Statusov</h3>
            <table class="table table-bordered">
                <thead>
                <tr>

                    <td>Id</td>
                    <td>Vysvetlenie</td>
                </tr>
                </thead>
                <%
                    for (int i = 0; i < repairStatuss.size(); i++) {
                %>
                <tr>
                    <td><%=repairStatuss.get(i).getId_status()%></td>
                    <td><%=repairStatuss.get(i).getStatus()%></td>
                </tr>
                <% } %>
            </table>
        </div>
    </div>
</div>

</body>
</html>
