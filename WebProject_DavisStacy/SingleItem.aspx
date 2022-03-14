<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SingleItem.aspx.cs" Inherits="WebProject_DavisStacy.SingleItem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TTown: Single Item</title>
    <script src="Scripts/jquery-3.5.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="Content/TTownResaleCSS.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@700&family=Quicksand&family=Roboto&display=swap" rel="stylesheet" />
</head>
<body id="Item">
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
                    <li class="nav-item">
                        <a href="AboutUs.aspx" class="nav-link">About</a>
                    </li>
                    <li class="Item nav-item">
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
                <%-- Section 1 --%>
                <div class="row p-3">
                    <div class="col-sm-12">
                        <div class="row">
                            <div class="col-sm-4">
                                <%-- Item Image --%>
                                <div class="row mx-auto">
                                    <%-- Primary Image --%>
                                    <div class="col-sm-12">
                                        <%-- Carousel --%>
                                        <div id="carouselRelatedItems" class="carousel slide" data-ride="carousel" data-interval="5000">
                                            <%-- Carousel Indicators --%>
                                            <ol class="carousel-indicators">
                                                <li data-target="#carouselRelatedItems" data-slide-to="0" class="active"></li>
                                                <li data-target="#carouselRelatedItems" data-slide-to="1"></li>
                                                <li data-target="#carouselRelatedItems" data-slide-to="2"></li>
                                            </ol>
                                            <div class="carousel-inner rounded">
                                                <%-- Image #1 --%>
                                                <div class="carousel-item active">
                                                    <div class="img-container">
                                                        <%--<img src="Images/Inventory/m_5f702de5e97e484474cf59b7.jpg"  alt="Kate Spade Tortoise Necklace"  />--%>
                                                        <img src="Images/Inventory/m_5faf1e52e97e4889324c04eb.jpg" class="img-fluid d-block mx-auto w-100 my-auto" id="r2img1"
                                                            alt="Premier Designs Beaded Infinity Necklace" />
                                                    </div>
                                                </div>
                                                <%-- Image #2 --%>
                                                <div class="carousel-item">
                                                    <%--<img src="Images/Inventory/m_5f729f36c693bdb65e13ff3e.jpg"  alt="Jay King Natural Coral Necklace"  />--%>
                                                    <img src="Images/Inventory/m_5faf1e56ce1e8779cfb91f2e.jpg" class="img-fluid d-block mx-auto w-100 my-auto" id="r2img2"
                                                        alt="Premier Designs Beaded Infinity Necklace" />
                                                </div>
                                                <%-- Image #3 --%>
                                                <div class="carousel-item">
                                                    <%--<img src="Images/Inventory/m_5f7031a71801366f65e91db6.jpg"  alt="Robert Lee Morris SOHO Silver Bracelet"  />--%>
                                                    <img src="Images/Inventory/m_5faf1e55efd0e4cbef1975dd.jpg" class="img-fluid d-block mx-auto w-100 my-auto" id="r2img3"
                                                        alt="Premier Designs Beaded Infinity Necklace" />
                                                </div>
                                                <%-- Image #4 --%>
                                                <div class="carousel-item">
                                                    <%--<img src="Images/Inventory/m_5f729f36c693bdb65e13ff3e.jpg"  alt="Jay King Natural Coral Necklace"  />--%>
                                                    <img src="Images/Inventory/m_5faf1e54284e99f89dae1f26.jpg" class="img-fluid d-block mx-auto w-100 my-auto" id="r2img4"
                                                        alt="Premier Designs Beaded Infinity Necklace" />
                                                </div>
                                                <%-- Image #5 --%>
                                                <div class="carousel-item">
                                                    <%--<img src="Images/Inventory/m_5f7031a71801366f65e91db6.jpg"  alt="Robert Lee Morris SOHO Silver Bracelet"  />--%>
                                                    <img src="Images/Inventory/m_5faf1e5760fded72ffbfac64.jpg" class="img-fluid d-block mx-auto w-100 my-auto" id="r2img5"
                                                        alt="Premier Designs Beaded Infinity Necklace" />
                                                </div>
                                            </div>
                                            <%-- Carousel Controls --%>
                                            <a class="carousel-control-prev" href="#carouselRelatedItems" role="button" data-slide="prev">
                                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                                <span class="sr-only">Previous</span>
                                            </a>
                                            <a class="carousel-control-next" href="#carouselRelatedItems" role="button" data-slide="next">
                                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                                <span class="sr-only">Next</span>
                                            </a>
                                        </div>
                                        <%--<img src="Images/Inventory/m_5faf1e52e97e4889324c04eb.jpg" alt="Premier Designs Beaded Infinity Necklace" class="img-fluid mx-auto d-block" />--%>
                                    </div>
                                    <%-- Thumbnails Images --%>
                                    <%-- I can not get the contents to center justify; align="center" in the next line is the only thing that roughly works --%>
                                    <div class="col-sm-12" align="center">
                                        <div class="Thumbnail">
                                            <img src="Images/Inventory/m_5faf1e52e97e4889324c04eb.jpg" alt="Premier Designs Beaded Infinity Necklace" class="img-fluid img-thumbnail mx-auto" />
                                            <img src="Images/Inventory/m_5faf1e56ce1e8779cfb91f2e.jpg" alt="Premier Designs Beaded Infinity Necklace" class="img-fluid img-thumbnail mx-auto" />
                                            <img src="Images/Inventory/m_5faf1e55efd0e4cbef1975dd.jpg" alt="Premier Designs Beaded Infinity Necklace" class="img-fluid img-thumbnail mx-auto" />
                                            <img src="Images/Inventory/m_5faf1e54284e99f89dae1f26.jpg" alt="Premier Designs Beaded Infinity Necklace" class="img-fluid img-thumbnail mx-auto" />
                                            <img src="Images/Inventory/m_5faf1e5760fded72ffbfac64.jpg" alt="Premier Designs Beaded Infinity Necklace" class="img-fluid img-thumbnail mx-auto" />
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-8">
                                <div class="row">
                                    <%-- Item Description --%>
                                    <div class="col-sm-9">
                                        <div class="ml-3 pl-4">
                                            <h3>Premier Designs</h3>
                                            <h4>Super Long Single Strand Rope Infinity Necklace</h4>
                                            <p>
                                                Item: JEL137<br />
                                                <br />
                                                <br />
                                                Amber, Jet black, Gray pearl, fauceted beads on a silver tone chain, Lobster claw clasp closure, Signed maker's mark tag<br />
                                                <br />
                                                <b>Length: 57" plus 3.5" Extender</b><br />
                                                <b>Materials:</b> Glass, Mixed metal<br />
                                                <b>Condition:</b> Gently worn, no flaws<br />
                                                <br />
                                                <br />
                                                <br />
                                                <br />
                                            </p>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="ml-3 pl-3">
                                            <h3 class="Original">$40</h3>
                                            <h3 class="Sale">$26</h3>
                                        </div>
                                    </div>
                                </div>
                                <div class="row ml-3 pl-1 align-bottom">
                                    <div class="col-sm-12">
                                        <%-- Box for discounts, Wishlist, Add to Cart --%>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <%-- Related items --%>
                        <div class="row border m-3 p-3">
                            <div class="col-sm-12">
                                <h3>Related Items</h3>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="card">
                                            <img src="Images/Inventory/m_5fa4faa02f3d19fcf0123bcb.jpg" alt="Sam Edelman Leather Spike Bootie" class="img-fluid" />
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
