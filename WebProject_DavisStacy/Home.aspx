<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebProject_DavisStacy.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TTown Resale Home</title>
    <script src="Scripts/jquery-3.5.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="Content/TTownResaleCSS.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@700&family=Quicksand&family=Roboto&display=swap" rel="stylesheet" />
</head>
<body id="Home">
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

            <%-- Navigation Bar --%>
            <nav class="navbar navbar-expand-sm">
                <ul class="navbar-nav">
                    <li class="Home nav-item">
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

            <%-- Container, Banner--%>
            <div class="Body container-fluid">
                <%-- Row 1, Border --%>
                <div class="row p-3">
                    <%-- Border (R1-C1) --%>
                    <div class="col-sm-12">
                        <%-- Section 1 --%>
                        <div class="row">
                            <%-- Left Banner, Search Filters --%>
                            <div class="col-sm-2">
                                <div class="SideFilter">
                                    <%-- <h4>Filters</h4>--%>
                                    <h3>Condition</h3>
                                    <%-- Checkbox and label --%>
                                    <div class="form-check">
                                        <asp:CheckBox ID="cbNew" runat="server" CssClass="form-check-input" />
                                        <asp:Label ID="lblNew" runat="server" Text="New"></asp:Label>
                                    </div>
                                    <div class="form-check">
                                        <asp:CheckBox ID="cbUsed" runat="server" CssClass="form-check-input" />
                                        <asp:Label ID="lblUsed" runat="server" Text="Pre-Loved"></asp:Label>
                                    </div>
                                    <h3>Price</h3>
                                    <%-- 2 Input boxes, Max & Min --%>
                                    <div class="form-check">
                                        <asp:RadioButton ID="rbUnder25" runat="server" CssClass="form-check-input" />
                                        <asp:Label ID="lblUnder25" runat="server" Text="Under $25"></asp:Label>
                                    </div>
                                    <div class="form-check">
                                        <asp:RadioButton ID="rb25to50" runat="server" CssClass="form-check-input" />
                                        <asp:Label ID="lbl25to50" runat="server" Text="$25 to $50"></asp:Label>
                                    </div>
                                    <div class="form-check">
                                        <asp:RadioButton ID="rb50to75" runat="server" CssClass="form-check-input" />
                                        <asp:Label ID="lbl50to75" runat="server" Text="$50 to $75"></asp:Label>
                                    </div>
                                    <div class="form-check">
                                        <asp:RadioButton ID="rbOver75" runat="server" CssClass="form-check-input" />
                                        <asp:Label ID="lblOver75" runat="server" Text="$75 and Over"></asp:Label>
                                    </div>
                                    <h3>Sale</h3>
                                    <%-- Checkbox --%>
                                    <div class="form-check">
                                        <asp:CheckBox ID="cbSale" runat="server" CssClass="form-check-input" />
                                        <asp:Label ID="lblSale" runat="server" Text="Sale"></asp:Label>
                                    </div>
                                    <div class="form-check">
                                        <asp:CheckBox ID="cbClearance" runat="server" CssClass="form-check-input" />
                                        <asp:Label ID="lblClearance" runat="server" Text="Clearance"></asp:Label>
                                    </div>
                                    <%--<h3>Color</h3>--%>
                                    <%-- Color Radio Button --%>
                                    <div></div>
                                </div>
                            </div>

                            <%-- Inventory --%>
                            <%-- I can not get the contents to center justify; align="center" in the next line is the only thing that roughly works --%>
                            <div class="col-sm-10" align="center">
                                <%-- Row 1 --%>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="card">
                                            <a href="SingleItem.aspx">
                                                <img src="Images/Inventory/m_5faf1e52e97e4889324c04eb.jpg" alt="Premier Designs Beaded Infinity Necklace" class="img-fluid" /></a>
                                            <h5>Item Name</h5>
                                            <p>Description Goes Here</p>
                                        </div>
                                        <div class="card">
                                            <img src="Images/Inventory/m_5f702de5e97e484474cf59b7.jpg" alt="Kate Spade Tortoise Necklace" class="img-fluid" />
                                            <h5>Item Name</h5>
                                            <p>Description Goes Here</p>
                                        </div>
                                        <div class="card">
                                            <img src="Images/Inventory/m_5f7031a71801366f65e91db6.jpg" alt="RLM SoHo Silver Fan Bracelet" class="img-fluid" />
                                            <h5>Item Name</h5>
                                            <p>Description Goes Here</p>
                                        </div>
                                        <div class="card">
                                            <img src="Images/Inventory/m_5f729f36c693bdb65e13ff3e.jpg" alt="Natural Coral Beaded Necklace" class="img-fluid" />
                                            <h5>Item Name</h5>
                                            <p>Description Goes Here</p>
                                        </div>

                                    </div>
                                </div>

                                <%-- Row 2 --%>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="card">
                                            <img src="Images/Inventory/m_5fa4faa02f3d19fcf0123bcb.jpg" alt="Sam Edelman Leather Spike Bootie" class="img-fluid" />
                                            <h5>Item Name</h5>
                                            <p>Description Goes Here</p>
                                        </div>
                                        <div class="card">
                                            <img src="Images/Inventory/m_5faf1e52e97e4889324c04eb.jpg" alt="Premier Designs Beaded Infinity Necklace" class="img-fluid" />
                                            <h5>Item Name</h5>
                                            <p>Description Goes Here</p>
                                        </div>
                                        <div class="card">
                                            <img src="Images/Inventory/m_5faef96167bd91b27a98b7e3.jpg" alt="Kate Spade Gold Bangle Set" class="img-fluid" />
                                            <h5>Item Name</h5>
                                            <p>Description Goes Here</p>
                                        </div>
                                        <div class="card">
                                            <img src="Images/Inventory/m_5f702de5e97e484474cf59b7.jpg" alt="Kate Spade Tortoise Necklace" class="img-fluid" />
                                            <h5>Item Name</h5>
                                            <p>Description Goes Here</p>
                                        </div>
                                    </div>
                                </div>

                                <%-- Row 3 --%>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="card">
                                            <img src="Images/Inventory/m_5f729f36c693bdb65e13ff3e.jpg" alt="Natural Coral Beaded Necklace" class="img-fluid" />
                                            <h5>Item Name</h5>
                                            <p>Description Goes Here</p>
                                        </div>

                                        <div class="card">
                                            <img src="Images/Inventory/m_5fa4faa02f3d19fcf0123bcb.jpg" alt="Sam Edelman Leather Spike Bootie" class="img-fluid" />
                                            <h5>Item Name</h5>
                                            <p>Description Goes Here</p>
                                        </div>
                                        <div class="card">
                                            <img src="Images/Inventory/m_5faf1e52e97e4889324c04eb.jpg" alt="Premier Designs Beaded Infinity Necklace" class="img-fluid" />
                                            <h5>Item Name</h5>
                                            <p>Description Goes Here</p>
                                        </div>
                                        <div class="card">
                                            <img src="Images/Inventory/m_5faef96167bd91b27a98b7e3.jpg" alt="Kate Spade Gold Bangle Set" class="img-fluid" />
                                            <h5>Item Name</h5>
                                            <p>Description Goes Here</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
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
