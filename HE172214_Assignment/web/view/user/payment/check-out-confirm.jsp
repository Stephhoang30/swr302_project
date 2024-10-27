<%-- 
    Document   : check-out
    Created on : Oct 24, 2024, 8:21:53 AM
    Author     : stephhoang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Team5_MobileStore - Checkout</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">

    <!-- all css here -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/meanmenu.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.carousel.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/flexslider.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/chosen.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/responsive.css">

    <!-- Custom styles for the checkout -->
    <style>
        .checkout-container {
            display: flex;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            width: 100%;
            max-width: 800px;
            margin: auto;
            padding: 20px;
            transition: transform 0.3s ease;
        }
        .checkout-container:hover {
            transform: scale(1.02);
        }
        .thank-you {
            font-size: 22px;
            color: #28a745;
            font-weight: bold;
            margin-bottom: 25px;
        }
        .order-summary h3 {
            font-size: 20px;
            font-weight: bold;
            color: #333;
        }
        .order-item {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 15px;
            transition: background-color 0.3s ease;
            padding: 10px;
            border-radius: 5px;
        }
        .order-item:hover {
            background-color: #f9f9f9;
        }
        .order-item img {
            width: 50px;
            height: 50px;
            border-radius: 5px;
            margin-right: 15px;
        }
        .item-price {
            font-weight: bold;
            color: #333;
        }
        .total {
            font-size: 18px;
            color: #28a745;
            margin-top: 20px;
            font-weight: bold;
        }
        .continue-shopping {
            display: inline-block;
            width: 100%;
            padding: 12px;
            background-color: #007bff;
            color: #fff;
            text-align: center;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }
        .continue-shopping:hover {
            background-color: #0056b3;
        }
    </style>
</head>

<body class="checkout">
    <!-- header-area-start -->
    <header>
        <jsp:include page="../../common/homepage/header-top-area.jsp"></jsp:include>
        <jsp:include page="../../common/homepage/header-mid-area.jsp"></jsp:include>
        <jsp:include page="../../common/homepage/main-menu-area.jsp"></jsp:include>
        <jsp:include page="../../common/homepage/mobile-menu-area.jsp"></jsp:include>
    </header>
    <!-- header-area-end -->

    <!-- breadcrumbs-area-start -->
    <jsp:include page="../../common/homepage/breadcrumbs-area.jsp"></jsp:include>
    <!-- breadcrumbs-area-end -->

    <!-- Checkout content starts here -->
    <div class="checkout-container">
        <div class="order-details">
            <h2>Checkout</h2>
            <div class="thank-you">Thank you, Ninh!</div>
            <div class="order-info">
                <p>Order #444</p>
                <p>You will receive order and shipping updates via email.</p>
            </div>
            <div class="address-info">
                <p><strong>Contact:</strong>Hai Ninh</p>
                <p><strong>Address:</strong></p>
                <p>56 Street Address</p>
                <p>Town</p>
                <p>County</p>
                <p><strong>Payment:</strong> Cash on delivery</p>
            </div>
            <a href="../../../home" class="continue-shopping">Continue Shopping</a>
        </div>

        <!-- Order Summary Section -->
        <div class="order-summary">
            <h3>Your Order <span>(2)</span></h3>
            <div class="order-item">
                <img src="${pageContext.request.contextPath}/img/product/20.jpg" alt="Loaded Pizza">
                <span>Samsung</span>
                <span class="item-price">£12.99</span>
            </div>
            <div class="order-item">
                <img src="${pageContext.request.contextPath}/img/product/20.jpg" alt="Not Quite Loaded Pizza">
                <span>Iphone</span>
                <span class="item-price">£10.99</span>
            </div>
            <div class="subtotal">
                <p>Subtotal: £23.98</p>
            </div>
            <div class="shipping">
                <p>Shipping: Flat rate</p>
            </div>
            <div class="total">
                <p>Total: £23.98</p>
            </div>
        </div>
    </div>

    <!-- footer-area-start -->
    <jsp:include page="../../common/homepage/footer-area.jsp"></jsp:include>
    <!-- footer-area-end -->

    <!-- JS files -->
    <script src="${pageContext.request.contextPath}/js/vendor/modernizr-2.8.3.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.meanmenu.js"></script>
    <script src="${pageContext.request.contextPath}/js/wow.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.parallax-1.1.3.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.countdown.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.flexslider.js"></script>
    <script src="${pageContext.request.contextPath}/js/chosen.jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.counterup.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/waypoints.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/plugins.js"></script>
    <script src="${pageContext.request.contextPath}/js/main.js"></script>
</body>
</html>
