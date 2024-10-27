<%-- 
    Document   : product-list
    Created on : Oct 18, 2024, 12:38:25 AM
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

        <style>
            .error{
                color:red;
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

                        <!-- Breadcrumbs-->
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="dashboard">Dashboard</a>
                            </li>
                            <li class="breadcrumb-item active">Product List</li>
                            <li class="breadcrumb-item ml-auto">
                                <button type="button" class="btn btn-success" data-toggle="modal" data-target="#addModal">
                                    Add Product
                                </button>
                            </li>
                        </ol>

                        <!-- DataTables Example -->
                        <div class="card mb-3">
                            <div class="card-header">
                                <i class="fas fa-table"></i>
                                Product
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Image</th>
                                                <th>Name</th>
                                                <th>Quantity</th>
                                                <th>Price</th>
                                                <th>Category</th>
                                                <th>Status</th>
                                                <th>Description</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${products}" var="p">
                                            <tr>
                                                <td>${p.getId()}</td>
                                                <td>
                                                    <img src="${pageContext.request.contextPath}/img/product/${p.getImage()}" width="100" height="100" alt="alt"/>
                                                </td>
                                                <td>${p.getName()}</td>

                                                <td>${p.getQuantity()}</td>
                                                <td>${p.getPrice()}</td>
                                                <td>
                                                    <c:forEach items="${categories}" var="c">
                                                        <c:if test="${c.getId() == p.getCategoryId()}">
                                                            ${c.getName()}
                                                        </c:if>
                                                    </c:forEach>
                                                </td>
                                                <td>Active</td>
                                                <td>${p.getDescription()}</td>
                                                <td>
                                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#editModal-${p.getId()}">
                                                        Edit
                                                    </button>
                                                    <button type="button" class="btn btn-danger">Deactivate</button>
                                                </td>
                                            </tr>
                                        </c:forEach>
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

        <jsp:include page="../admin/addProductModal.jsp"></jsp:include>


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


        <c:forEach items="${products}" var="p">
            <!-- Edit Product Modal -->
            <div class="modal fade" id="editModal-${p.getId()}" tabindex="-1" role="dialog" aria-labelledby="editModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="editModalLabel">Edit Product - ${p.getName()}</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form action="editProduct" method="post">
                                <input type="hidden" name="productId" value="${p.getId()}" />
                                <div class="form-group">
                                    <label for="productName-${p.getId()}">Product Name</label>
                                    <input type="text" class="form-control" id="productName-${p.getId()}" name="name" value="${p.getName()}" required>
                                </div>
                                <div class="form-group">
                                    <label for="productQuantity-${p.getId()}">Quantity</label>
                                    <input type="number" class="form-control" id="productQuantity-${p.getId()}" name="quantity" value="${p.getQuantity()}" required>
                                </div>
                                <div class="form-group">
                                    <label for="productPrice-${p.getId()}">Price</label>
                                    <input type="text" class="form-control" id="productPrice-${p.getId()}" name="price" value="${p.getPrice()}" required>
                                </div>
                                <div class="form-group">
                                    <label for="productCategory-${p.getId()}">Category</label>
                                    <select class="form-control" id="productCategory-${p.getId()}" name="categoryId" required>
                                        <c:forEach items="${categories}" var="c">
                                            <option value="${c.getId()}" ${c.getId() == p.getCategoryId() ? 'selected' : ''}>${c.getName()}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="productDescription-${p.getId()}">Description</label>
                                    <textarea class="form-control" id="productDescription-${p.getId()}" name="description" rows="3">${p.getDescription()}</textarea>
                                </div>
                                <button type="submit" class="btn btn-primary">Save changes</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>

    </body>

</html>
