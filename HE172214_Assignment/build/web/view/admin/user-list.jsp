<%-- 
    Document   : user-list
    Created on : Oct 27, 2024, 8:20:51 PM
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
        <title>UserList</title>

        <!-- Custom fonts for this template-->
        <link href="${pageContext.request.contextPath}/vendor-admin/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/vendor-admin/datatables/dataTables.bootstrap4.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/css/sb-admin.css" rel="stylesheet">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/colReorder-bootstrap4.css">

        <style>
            .error{
                color:red;
            }
            table {
                width: 100%;
                border-collapse: collapse;
            }

            table, th, td {
                border: 1px solid black;
            }

            th, td {
                padding: 8px;
                text-align: left;
            }

            th {
                background-color: #f2f2f2;
            }

            .action-icons img {
                width: 20px;
                height: 20px;
                margin-right: 5px;
            }

            .pagination {
                margin-top: 10px;
                text-align: center;
            }

            .pagination a {
                margin: 0 5px;
                padding: 5px 10px;
                text-decoration: none;
                border: 1px solid #ccc;
                border-radius: 5px;
            }

            .pagination a.active {
                background-color: #4CAF50;
                color: white;
                border: 1px solid #4CAF50;
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
                            <li class="breadcrumb-item active">User List</li>
                        </ol>

                        <!-- DataTables Example -->
                        <div class="card mb-3">
                            <div class="card-header">
                                <i class="fas fa-table"></i> USERLIST
                            </div>
                            <div class="card-header">
                                <select>
                                    <option>Filter By Role</option>
                                    <option>Seller</option>
                                    <option>Admin</option>
                                    <option>Shop Staff</option>
                                    <option>Customer</option>
                                </select>
                                <select>
                                    <option>Filter By Status</option>
                                    <option>Active</option>
                                    <option>Inactive</option>
                                </select>
                                <!-- Button to trigger Add New User Modal -->
                                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addUserModal">
                                    Add new user
                                </button>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>User Name</th>
                                                <th>Email</th>
                                                <th>Full Name</th>
                                                <th>Role</th>
                                                <th>Status</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>User1</td>
                                                <td>abc@gmail.com</td>
                                                <td>NguyenVanA</td>
                                                <td>Seller</td>
                                                <td>Active</td>
                                                <td class="action-icons">
                                                    <a href="#" data-toggle="modal" data-target="#editUserModal" onclick="editUserModal(this)">
                                                        <img src="https://icon-library.com/images/change-icon-png/change-icon-png-19.jpg" alt="Change Icon">
                                                    </a>
                                                    <a href="userdetail.jsp">
                                                        <img src="https://icons.veryicon.com/png/o/education-technology/smart-campus-1/view-details-2.png" alt="View Details Icon">
                                                    </a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>User2</td>
                                                <td>abc@gmail.com</td>
                                                <td>NguyenVanB</td>
                                                <td>Admin</td>
                                                <td>Active</td>
                                                <td class="action-icons">
                                                    <a href="#" data-toggle="modal" data-target="#editUserModal" onclick="editUserModal(this)">
                                                        <img src="https://icon-library.com/images/change-icon-png/change-icon-png-19.jpg" alt="Change Icon">
                                                    </a>
                                                    <a href="userdetail.jsp">
                                                        <img src="https://icons.veryicon.com/png/o/education-technology/smart-campus-1/view-details-2.png" alt="View Details Icon">
                                                    </a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>User3</td>
                                                <td>abc@gmail.com</td>
                                                <td>NguyenVanC</td>
                                                <td>Shop Staff</td>
                                                <td>Active</td>
                                                <td class="action-icons">
                                                    <a href="#" data-toggle="modal" data-target="#editUserModal" onclick="editUserModal(this)">
                                                        <img src="https://icon-library.com/images/change-icon-png/change-icon-png-19.jpg" alt="Change Icon">
                                                    </a>
                                                    <a href="userdetail.jsp">
                                                        <img src="https://icons.veryicon.com/png/o/education-technology/smart-campus-1/view-details-2.png" alt="View Details Icon">
                                                    </a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>4</td>
                                                <td>User4</td>
                                                <td>abc@gmail.com</td>
                                                <td>NguyenVanD</td>
                                                <td>Customer</td>
                                                <td>Inactive</td>
                                                <td class="action-icons">
                                                    <a href="#" data-toggle="modal" data-target="#editUserModal" onclick="editUserModal(this)">
                                                        <img src="https://icon-library.com/images/change-icon-png/change-icon-png-19.jpg" alt="Change Icon">
                                                    </a>
                                                    <a href="userdetail.jsp">
                                                        <img src="https://icons.veryicon.com/png/o/education-technology/smart-campus-1/view-details-2.png" alt="View Details Icon">
                                                    </a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>5</td>
                                                <td>User5</td>
                                                <td>abc@gmail.com</td>
                                                <td>NguyenVanE</td>
                                                <td>Customer</td>
                                                <td>Active</td>
                                                <td class="action-icons">
                                                    <a href="#" data-toggle="modal" data-target="#editUserModal" onclick="editUserModal(this)">
                                                        <img src="https://icon-library.com/images/change-icon-png/change-icon-png-19.jpg" alt="Change Icon">
                                                    </a>
                                                    <a href="userdetail.jsp">
                                                        <img src="https://icons.veryicon.com/png/o/education-technology/smart-campus-1/view-details-2.png" alt="View Details Icon">
                                                    </a>
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

            <!-- Add New User Modal -->
            <div class="modal fade" id="addUserModal" tabindex="-1" aria-labelledby="addUserModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="addUserModalLabel">Add New User</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form action="/addUser" method="post">
                                <div class="form-group">
                                    <label for="username">Username</label>
                                    <input type="text" class="form-control" id="username" name="username" required>
                                </div>
                                <div class="form-group">
                                    <label for="email">Email</label>
                                    <input type="email" class="form-control" id="email" name="email" required>
                                </div>
                                <div class="form-group">
                                    <label for="fullName">Full Name</label>
                                    <input type="text" class="form-control" id="fullName" name="fullName" required>
                                </div>
                                <div class="form-group">
                                    <label for="role">Role</label>
                                    <select class="form-control" id="role" name="role" required>
                                        <option value="">Select Role</option>
                                        <option value="Seller">Seller</option>
                                        <option value="Admin">Admin</option>
                                        <option value="Shop Staff">Shop Staff</option>
                                        <option value="Customer">Customer</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="status">Status</label>
                                    <select class="form-control" id="status" name="status" required>
                                        <option value="">Select Status</option>
                                        <option value="Active">Active</option>
                                        <option value="Inactive">Inactive</option>
                                    </select>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                    <button type="submit" class="btn btn-primary">Add User</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Edit User Modal -->
            <div class="modal fade" id="editUserModal" tabindex="-1" aria-labelledby="editUserModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="editUserModalLabel">Edit User</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form action="/editUser" method="post">
                                <input type="hidden" id="editUserId" name="userId">
                                <div class="form-group">
                                    <label for="editUsername">Username</label>
                                    <input type="text" class="form-control" id="editUsername" name="username" required>
                                </div>
                                <div class="form-group">
                                    <label for="editEmail">Email</label>
                                    <input type="email" class="form-control" id="editEmail" name="email" required>
                                </div>
                                <div class="form-group">
                                    <label for="editFullName">Full Name</label>
                                    <input type="text" class="form-control" id="editFullName" name="fullName" required>
                                </div>
                                <div class="form-group">
                                    <label for="editRole">Role</label>
                                    <select class="form-control" id="editRole" name="role" required>
                                        <option value="">Select Role</option>
                                        <option value="Seller">Seller</option>
                                        <option value="Admin">Admin</option>
                                        <option value="Shop Staff">Shop Staff</option>
                                        <option value="Customer">Customer</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="editStatus">Status</label>
                                    <select class="form-control" id="editStatus" name="status" required>
                                        <option value="">Select Status</option>
                                        <option value="Active">Active</option>
                                        <option value="Inactive">Inactive</option>
                                    </select>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                    <button type="submit" class="btn btn-primary">Save Changes</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

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

    <script>
                function editUserModal(button) {
                    // Get the row of the clicked "Change Icon"
                    let row = $(button).closest('tr');

                    // Retrieve data from the row
                    let userId = row.find('td').eq(0).text().trim();
                    let username = row.find('td').eq(1).text().trim();
                    let email = row.find('td').eq(2).text().trim();
                    let fullName = row.find('td').eq(3).text().trim();
                    let role = row.find('td').eq(4).text().trim();
                    let status = row.find('td').eq(5).text().trim();

                    // Populate the edit modal fields with retrieved data
                    $('#editUserId').val(userId);
                    $('#editUsername').val(username);
                    $('#editEmail').val(email);
                    $('#editFullName').val(fullName);

                    // Set the Role dropdown
                    $('#editRole').val(role);

                    // Set the Status dropdown
                    $('#editStatus').val(status);
                }
    </script>

</html>
