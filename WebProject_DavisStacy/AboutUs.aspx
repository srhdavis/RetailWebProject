<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="WebProject_DavisStacy.AboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TTown: About</title>
    <script src="Scripts/jquery-3.5.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="Content/TTownResaleCSS.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@700&family=Quicksand&family=Roboto&display=swap" rel="stylesheet" />
</head>
<body id="About">
    <form id="form1" runat="server">
        <div>
            <%-- Top Banner Looks great, DON'T MESS WITH IT!! --%>
            <%-- --------------------------------------------------------------------------------------------------------------------- --%>
            <%-- Banner Top, Light Green Banner, Dark Orange Logo --%>
            <div class="jumbotron">
                <a href="Home.aspx">
                    <img src="Images/TTRLogo1.png" class="img-fluid" alt="Home Page" /></a>
                <h1 class="">TTown Resale</h1>
                <%-- Cart btn --%>
            </div>

            <%-- Navigation Bar --%>
            <nav class="navbar navbar-expand-sm">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a href="Home.aspx" class="nav-link">HOME</a>
                    </li>
                    <li class="About nav-item">
                        <a href="AboutUs.aspx" class="nav-link">About</a>
                    </li>
                    <li class="nav-item">
                        <a href="SingleItem.aspx" class="nav-link">Item</a>
                    </li>
                    <li class="nav-item">
                        <a href="Cart.aspx" class="nav-link">My Cart</a>
                    </li>
                </ul>
            </nav>

            <%-- My Cart btn --%>
            <%--<div class="MyCart">
                <asp:Button ID="btnMyCart" runat="server" Text="My Cart" />
            </div>--%>
            <%-- --------------------------------------------------------------------------------------------------------------------- --%>

            <div class="Body container-fluid">
                <%-- Row 1, Image --%>
                <div class="row" id="row1">
                    <%-- I can not get the contents to center justify; align="center" in the next line is the only thing that roughly works --%>
                    <div class="col-sm-12" align="center">
                        <img src="Images/Stacy%20&%20Jason_10.jpg" class="img-fluid w-50 min mx-auto my-4 border rounded " alt="My Family" />
                    </div>
                </div>

                <%-- Row 2, Description --%>
                <div class="row" id="row2">
                    <div class="col-sm-12">
                        <div class="row">
                            <div class="col-sm-2">
                            </div>

                            <div class="AboutDesc col-sm-8">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <h5>My Beginning</h5>
                                        <p>
                                            Hi, I'm Stacy! In 2018, my husband and I realized we had a BIG problem. Our finances were a mess and were suffocating in debt.
                                            Each payday we made payments on our credit cards, auto loans, and the mortgage on our home, to find we only had a tiny amount 
                                            for food and gas for the month.<br />
                                            <br />
                                            In 2018, I decided to sell some of my clothes online to make some extra money, and I discovered that I could make a business out of it.
                                            Careful not to increase our debt, I used the money I made from sales to buy supples and build my inventory. Not only have I been able 
                                            to contribute towards our goal of paying off our debts, I really enjoy learning the ins-and-out of entreprenuership.<br />
                                            <br />
                                        </p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <h5>The Present</h5>
                                        <p>
                                            TTown Resale was established in Tulsa, OK in January 2019. I sell new and pre-loved womens' clothing, shoes, jewelry, and accessories. 
                                            Ocassionally, you may also find some awesome mens' fashion items as well. In my search for high quality clothing, I also pick up
                                            fun vintage and "Cosplay" pieces. Thank you for visiting!
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-2">
                            </div>
                        </div>
                    </div>
                </div>

                <%-- Row 3, Video --%>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="row">
                            <div class="col-sm-4"></div>
                            <div class="col-sm-4 border bg-white mx-auto my-auto" id="Video">
                                <div>
                                    <h3>Video Goes here</h3>
                                </div>
                                <%--<div class="embed-responsive embed-responsive-16by9">
                                    <iframe width="560" height="315" src="https://www.youtube.com/embed/vWwJA1b2l7g" frameborder="0"
                                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                </div>--%>
                            </div>
                            <div class="col-sm-4"></div>
                        </div>
                    </div>
                </div>

                <%-- Row 4, Contact Me --%>
                <div class="row" id="row4">
                    <div class="col-sm-12">
                        <div class="row">
                            <div class="col-sm-2">
                            </div>
                            <div class="AboutDesc col-sm-8">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <h5>Contact Me:</h5>
                                            <p>
                                                <asp:Label ID="lblFName" runat="server" Text="Enter your first name:"></asp:Label>
                                                <asp:TextBox ID="tbFName" runat="server" CssClass="form-control"></asp:TextBox>
                                                <br />
                                                <br />

                                                <asp:Label ID="lblLName" runat="server" Text="Enter your last name:"></asp:Label>
                                                <asp:TextBox ID="tbLName" runat="server" CssClass="form-control"></asp:TextBox>
                                                <br />
                                                <br />

                                                <asp:Label ID="lblEmail" runat="server" Text="Enter your email:"></asp:Label>
                                                <asp:TextBox ID="tbEmail" runat="server" TextMode="Email" CssClass="form-control"></asp:TextBox>
                                                <br />
                                                <br />

                                                <asp:Label ID="lblComment" runat="server" Text="Enter your question or comment:"></asp:Label>
                                                <asp:TextBox ID="tbComment" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                                                <br />
                                                <br />
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-2">
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
