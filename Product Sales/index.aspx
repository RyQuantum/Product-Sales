<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Product_Sales.index" %>

<asp:content id="Content2" contentplaceholderid="MenuPlaceHolder" runat="server">
     <!--banner-starts-->
    <div class="bnr" id="home">
        <div id="top" class="callbacks_container">
            <ul class="rslides" id="slider4">
                <li>
                    <div class="banner">
                    </div>
                </li>
                <li>
                    <div class="banner1">
                    </div>
                </li>
                <li>
                    <div class="banner2">
                    </div>
                </li>
            </ul>
        </div>
        <div class="clearfix"></div>
    </div>
    <!--banner-ends-->

    <!--Slider-Starts-Here-->
    <script src="js/responsiveslides.min.js"></script>
    <script>
        // You can also use "$(window).load(function() {"
        $(function () {
            // Slideshow 4
            $("#slider4").responsiveSlides({
                auto: true,
                pager: true,
                nav: true,
                speed: 500,
                namespace: "callbacks",
                before: function () {
                    $('.events').append("<li>before event fired.</li>");
                },
                after: function () {
                    $('.events').append("<li>after event fired.</li>");
                }
            });

        });
    </script>
    <!--End-slider-script-->
    <!--about-starts-->
    <div class="copyrights">Collect from <a href="http://www.cssmoban.com/">手机网站模板</a></div>
    <div class="about">
        <div class="container">
            <div class="about-top grid-1">
                <div class="col-md-4 about-left">
                    <figure class="effect-bubba">
                        <img class="img-responsive" src="images/abt-1.jpg" alt="" />
                        <figcaption>
                            <h2>Nulla maximus nunc</h2>
                            <p>In sit amet sapien eros Integer dolore magna aliqua</p>
                        </figcaption>
                    </figure>
                </div>
                <div class="col-md-4 about-left">
                    <figure class="effect-bubba">
                        <img class="img-responsive" src="images/abt-2.jpg" alt="" />
                        <figcaption>
                            <h4>Mauris erat augue</h4>
                            <p>In sit amet sapien eros Integer dolore magna aliqua</p>
                        </figcaption>
                    </figure>
                </div>
                <div class="col-md-4 about-left">
                    <figure class="effect-bubba">
                        <img class="img-responsive" src="images/abt-3.jpg" alt="" />
                        <figcaption>
                            <h4>Cras elit mauris</h4>
                            <p>In sit amet sapien eros Integer dolore magna aliqua</p>
                        </figcaption>
                    </figure>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <!--about-end-->
    <!--product-starts-->
    <div class="product">
        <div class="container">
            <div class="product-top">
                <div class="product-one">
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <div class="col-md-3 product-left">
                                <div class="product-main simpleCart_shelfItem">
                                    <a href="single.aspx?id=<%#Eval("id") %>" class="mask">
                                        <img class="img-responsive zoom-img" src="images/<%#Eval("picture") %>" alt="" /></a>
                                    <div class="product-bottom">
                                        <h3><%#Eval("name") %></h3>
                                        <p>Explore Now</p>
                                        <h4><a class="item_add" href="#"><i></i></a><span class=" item_price">$ <%#Eval("price") %></span></h4>
                                    </div>
                                    <div class="srch">
                                        <span>-<%#Eval("discount") %>%</span>
                                    </div>
                                </div>
                            </div>
                            <%#Container.ItemIndex==3 ? "<div class=\"clearfix\"></div></div><div class=\"product-one\">" :String.Empty%>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </div>
    <!--product-end-->
</asp:content>
