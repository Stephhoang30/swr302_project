<%-- 
    Document   : order-list
    Created on : Oct 27, 2024, 9:38:11 PM
    Author     : stephhoang
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Dashboard</title>

        <!-- Custom fonts for this template-->
        <link href="${pageContext.request.contextPath}/vendor-admin/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

        <!-- Page level plugin CSS-->
        <link href="${pageContext.request.contextPath}/vendor-admin/datatables/dataTables.bootstrap4.css" rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="${pageContext.request.contextPath}/css/sb-admin.css" rel="stylesheet">

        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/colReorder-bootstrap4.css">

        <!-- Custom fonts and styles -->
        <link href="${pageContext.request.contextPath}/vendor-admin/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/css/sb-admin.css" rel="stylesheet">
        <style>
            .order-list-container {
                margin: 20px;
            }
            .filters {
                display: flex;
                justify-content: space-between;
                margin-bottom: 10px;
            }
            .filters button, .filters select, .filters input {
                margin-right: 10px;
            }
            .table th, .table td {
                vertical-align: middle;
            }
            .status-label {
                display: inline-block;
                padding: 5px 10px;
                border-radius: 5px;
            }
            .status-wait {
                background-color: #ffc107;
            }
            .status-delivery {
                background-color: #17a2b8;
            }
            .status-cancel {
                background-color: #dc3545;
            }
            .shipping-label {
                background-color: #28a745;
                color: white;
                border-radius: 5px;
                padding: 2px 5px;
            }
            .table .action-buttons {
                display: flex;
                justify-content: space-evenly;
            }
        </style>

    </head>

    <body id="page-top">

        <!-- Navbar -->
        <jsp:include page="../common/admin/navbar.jsp"></jsp:include>

            <div id="wrapper">

                <!-- Sidebar -->
            <jsp:include page="../common/admin/sidebar.jsp"></jsp:include>

                <div id="content-wrapper">

                    <div class="container-fluid">


         

                        <!-- DataTables Example -->
                        <div class="card mb-3">
                            <div class="card-header">
                                <i class="fas fa-table"></i>
                                OrderList
                            </div>
                            <div class="card-header">
                                <div class="filters">
                                    <div class="filter-buttons">
                                        <button class="btn btn-outline-primary">All orders</button>
                                        <button class="btn btn-outline-secondary">Wait confirmed</button>
                                        <button class="btn btn-outline-secondary">Waiting for pick up (unprocessed)</button>
                                        <button class="btn btn-outline-secondary">Waiting for pick up (processed)</button>
                                        <button class="btn btn-outline-secondary">On delivery</button>
                                        <button class="btn btn-outline-secondary">Delivered</button>
                                        <button class="btn btn-outline-secondary">Canceled</button>                                   
                                    </div>                                
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th><input type="checkbox" /></th>
                                                <th>OrderID</th>
                                                <th>Customer</th>
                                                <th>Date</th>
                                                <th>Total Money</th>
                                                <th>Status</th>
                                                <th>Shipping</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td><input type="checkbox" /></td>
                                                <td>2658594264984614</td>
                                                <td>
                                                    Human 1 - 0123456789<br>
                                                    Street: 2336 Simpson Avenue<br>
                                                    City: York<br>
                                                    State/province/area: Pennsylvania
                                                </td>
                                                <td>20-10-2024</td>
                                                <td>$500</td>
                                                <td><span class="status-label status-wait">Wait confirmed</span></td>
                                                <td>---</td>
                                                <td class="action-buttons">
                                                    <button class="btn btn-info">...</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><input type="checkbox" /></td>
                                                <td>2658594264984614</td>
                                                <td>
                                                    Human 3 - 0153456789<br>
                                                    Street: 2336 Simpson Avenue<br>
                                                    City: York<br>
                                                    State/province/area: Pennsylvania
                                                </td>
                                                <td>12-10-2024</td>
                                                <td>$500</td>
                                                <td><span class="status-label status-delivery">On delivery</span></td>
                                                <td><span class="shipping-label">GHN</span></td>
                                                <td class="action-buttons">
                                                    <button class="btn btn-info">...</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><input type="checkbox" /></td>
                                                <td>2658594264984615</td>
                                                <td>
                                                    Human 4 - 0153456789<br>
                                                    Street: 2336 Simpson Avenue<br>
                                                    City: York<br>
                                                    State/province/area: Pennsylvania
                                                </td>
                                                <td>10-10-2024</td>
                                                <td>$500</td>
                                                <td><span class="status-label status-wait">Waiting for pick up (processed)</span></td>
                                                <td><span class="shipping-label">GHN</span></td>
                                                <td class="action-buttons">
                                                    <button class="btn btn-info">...</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><input type="checkbox" /></td>
                                                <td>2658594264984616</td>
                                                <td>
                                                    Human 2 - 0153456789<br>
                                                    Street: 2336 Simpson Avenue<br>
                                                    City: York<br>
                                                    State/province/area: Pennsylvania
                                                </td>
                                                <td>01-10-2024</td>
                                                <td>$500</td>
                                                <td><span class="status-label status-cancel">Canceled</span></td>
                                                <td>---</td>
                                                <td class="action-buttons">
                                                    <button class="btn btn-info">...</button>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>                     
                        </div>

                    </div>
                    <!-- /.container-fluid -->

                    <!-- Sticky Footer -->
                <jsp:include page="../common/admin/footer.jsp"></jsp:include>

                </div>
                <!-- /.content-wrapper -->

            </div>
            <!-- /#wrapper -->

            <!-- Scroll to Top Button-->
            <a class="scroll-to-top rounded" href="#page-top">
                <i class="fas fa-angle-up"></i>
            </a>

            <!-- Logout Modal-->
        <jsp:include page="../common/admin/logout-modal.jsp"></jsp:include>

            <!-- Bootstrap core JavaScript-->
            <script src="${pageContext.request.contextPath}/vendor-admin/jquery/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/vendor-admin/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="${pageContext.request.contextPath}/vendor-admin/jquery-easing/jquery.easing.min.js"></script>

        <!-- Page level plugin JavaScript-->
        <script src="${pageContext.request.contextPath}/vendor-admin/chart.js/Chart.min.js"></script>
        <script src="${pageContext.request.contextPath}/vendor-admin/datatables/jquery.dataTables.js"></script>
        <script src="${pageContext.request.contextPath}/vendor-admin/datatables/dataTables.bootstrap4.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="${pageContext.request.contextPath}/js/admin/sb-admin.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/admin/colReorder-bootstrap4-min.js"></script>
        <script src="${pageContext.request.contextPath}/js/admin/colReorder-dataTables-min.js"></script>

        <!-- Demo scripts for this page-->
        <script src="${pageContext.request.contextPath}/js/admin/demo/datatables-demo.js"></script>
        <script src="${pageContext.request.contextPath}/js/admin/demo/chart-area-demo.js"></script>
        <script src="${pageContext.request.contextPath}/js/admin/colReorder-dataTables-min.js"></script>
        <script src="${pageContext.request.contextPath}/js/admin/colReorder-bootstrap4-min.js"></script>


    </body>

</html>
