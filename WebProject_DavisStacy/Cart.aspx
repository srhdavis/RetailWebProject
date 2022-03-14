<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="WebProject_DavisStacy.Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cart</title>
    <script src="Scripts/jquery-3.5.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="Content/TTownResaleCSS.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@700&family=Quicksand&family=Roboto&display=swap" rel="stylesheet" />
</head>
<body id="Cart">
    <form id="form1" runat="server">
        <div>
            <%-- Top Banner Looks great, DON'T MESS WITH IT!! --%>
            <%-- --------------------------------------------------------------------------------------------------------------------- --%>
            <%-- Banner Top, Light Green Banner, Dark Orange Logo --%>
            <div class="jumbotron">
                <a href="Home.aspx">
                    <img src="Images/TTRLogo1.png" class="img-fluid" alt="Home Page" /></a>
                <h1 class="">TTown Resale</h1>
            </div>

            <%-- Navigation Bar, May remove and leave "Buy Now" btn & "Continue Shopping" btn only--%>
            <nav class="navbar navbar-expand-sm">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a href="Home.aspx" class="nav-link">HOME</a>
                    </li>
                    <li class="nav-item">
                        <a href="AboutUs.aspx" class="nav-link">About</a>
                    </li>
                    <li class="nav-item">
                        <a href="SingleItem.aspx" class="nav-link">Item</a>
                    </li>
                    <li class="Cart nav-item">
                        <a href="Cart.aspx" class="nav-link">My Cart</a>
                    </li>
                </ul>
            </nav>

            <%-- My Cart btn --%>
            <%--<div class="MyCart">
                <asp:Button ID="btnMyCart" runat="server" Text="My Cart" />
            </div>--%>
            <%-- --------------------------------------------------------------------------------------------------------------------- --%>

            <%-- Section 1, Check Out --%>
            <div class="Body container-fluid">
                <div class="row">
                    <div class="col-sm-12 mt-5">
                        <div class="row">

                            <%-- Cart content, price, quantity: --%>
                            <div class="col-sm-1"></div>

                            <div class="CartStyles col-sm-7">
                                <div class="row">
                                    <div class="CartItem col-sm-12">
                                        <div class="row">
                                            <%-- Item Thumbnail --%>
                                            <div class="col-sm-2">
                                                <h4>Item</h4>
                                            </div>
                                            <%-- Item Description, Remove btn, Wishlist btn --%>
                                            <div class="col-sm-8">
                                                <h4>Description</h4>
                                            </div>
                                            <%-- Item Price --%>
                                            <div class="col-sm-1">
                                                <h4>Price</h4>
                                            </div>
                                            <%-- Item Quantity --%>
                                            <div class="col-sm-1">
                                                <h4>Qty</h4>
                                            </div>
                                        </div>
                                        <hr />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="CartItem col-sm-12">
                                        <div class="row">
                                            <%-- Item Thumbnail --%>
                                            <div class="col-sm-2">
                                                <h4>Item</h4>
                                            </div>
                                            <%-- Item Description, Remove btn, Wishlist btn --%>
                                            <div class="col-sm-8">
                                                <h4>Description</h4>
                                            </div>
                                            <%-- Item Price --%>
                                            <div class="col-sm-1">
                                                <h4>Price</h4>
                                            </div>
                                            <%-- Item Quantity --%>
                                            <div class="col-sm-1">
                                                <h4>Qty</h4>
                                            </div>
                                        </div>
                                        <hr />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="CartItem col-sm-12">
                                        <div class="row">
                                            <%-- Item Thumbnail --%>
                                            <div class="col-sm-2">
                                                <h4>Item</h4>
                                            </div>
                                            <%-- Item Description, Remove btn, Wishlist btn --%>
                                            <div class="col-sm-8">
                                                <h4>Description</h4>
                                            </div>
                                            <%-- Item Price --%>
                                            <div class="col-sm-1">
                                                <h4>Price</h4>
                                            </div>
                                            <%-- Item Quantity --%>
                                            <div class="col-sm-1">
                                                <h4>Qty</h4>
                                            </div>
                                        </div>
                                        <hr />
                                    </div>
                                </div>
                            </div>


                            <%-- Total price, shipping, discounts: --%>
                            <div class="CartStyles col-sm-3">
                                <%-- Subtotal --%>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <h4>Subtotal</h4>
                                    </div>
                                    <div class="col-sm-6 text-right">
                                        <h4>$$</h4>
                                    </div>
                                </div>
                                <%-- Discounts --%>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <h4>Less: Discounts</h4>
                                    </div>
                                    <div class="col-sm-6 text-right">
                                        <h4>$$</h4>
                                    </div>
                                </div>
                                <%-- Shipping --%>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <h4>Est. Shipping</h4>
                                    </div>
                                    <div class="col-sm-6 text-right">
                                        <h4>$$</h4>
                                    </div>
                                </div>
                                <%-- Total Price --%>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <h4>Total Price</h4>
                                    </div>
                                    <div class="col-sm-6 text-right">
                                        <h4>$$</h4>
                                    </div>
                                </div>
                                <%-- Buy Now btn, Continue Shopping btn --%>
                                <div class="row text-center">
                                    <div class="col-sm-12">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <asp:Button ID="btnBuyNow" runat="server" Text="Buy Now" />
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <asp:Button ID="btnContinueShopping" runat="server" Text="Continue Shopping" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-1"></div>
                        </div>
                    </div>
                </div>

                <%-- Section 2, List of Other Pages --%>
                <div class="Footer row m-5">
                    <%-- Columns --%>
                    <div class="col-sm-12 mx-auto">
                        <div class="row">
                            <div class="col-sm-3 text-center">
                                <ul>
                                    <li><a href="Home.aspx">HOME</a></li>
                                </ul>
                            </div>
                            <div class="col-sm-3 text-center">
                                <ul>
                                    <li><a href="AboutUs.aspx">About</a></li>
                                </ul>
                            </div>
                            <div class="col-sm-3 text-center">
                                <ul>
                                    <li><a href="SingleItem.aspx">Item</a></li>
                                </ul>
                            </div>
                            <div class="col-sm-3 text-center">
                                <ul>
                                    <li><a href="Cart.aspx">My Cart</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>


