<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    <!--
    <div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>
    -->
    <div class="row">
        <div class="col-md-8">
            <div id="bestCarsCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#bestCarsCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#bestCarsCarousel" data-slide-to="1"></li>
                    <li data-target="#bestCarsCarousel" data-slide-to="2"></li>
                </ol>
                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="MyImage/ama-dablam-2064522__340.jpg" />
                        <div class="carousel-caption">
                            <h3>ama-dablam</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur ...</p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="MyImage/kingfisher-2046453__340.jpg" />
                        <div class="carousel-caption">
                            <h3>king fisher</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur ...</p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="MyImage/roter-sand-2042738__340.jpg" />
                        <div class="carousel-caption">
                            <h3>roter sand</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur ...</p>
                        </div>
                        
                    </div>
                     <div class="item">
                        <img src="MyImage/tulips-2048324__340.jpg" />
                        <div class="carousel-caption">
                            <h3>Tulips</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur ...</p>
                        </div>
                        
                    </div>
                </div>

            <div class="quang">
                <a class="left carousel-control" href="#bestCarsCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                </a>
                <a class="right carousel-control" href="#bestCarsCarousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
            </div>

            </div>
            <!-- Controls -->


<!--
            <div class="quang">
                <a class="left carousel-control" href="#bestCarsCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                </a>
                <a class="right carousel-control" href="#bestCarsCarousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
            </div>
    -->
            <div class="row">
                <div class="col-md-12" style="color:black">
                    <h2 style="font-family:'Buxton Sketch';font-size:xx-large; color:blueviolet">Welcome to Fairwood Nails</h2>
                    <p>We are professional nail care specialists. We offer all kinds of nails services from a basic nail file, polish, to adoring
                        custom designs. We also spcecialize in other services such as waxing, facials, and eyelash extention. Please see our Services page
                        for additional details. <br />We are located in Fairwood Shopping Center, just across from LA fitness building and neighboring to ...
                       
                    </p>
                </div>
            </div>
        </div> 
        
        <div class="col-md-1"></div>
        <!--
        <div class="col-md-3">
            <h2>Getting started</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-3">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-3">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
        -->
        <div class="col-md-3 jumbotron" style="padding-left: 5px; padding-top: 0px; text-align: center; font-size: inherit; box-shadow: 4px 4px; background-color:lightsalmon">
            <h4>Our Location</h4>
            <address>
                1234 beacon ave so
                                <br />
                seattle, wa 98384
            </address>
            <hr style="color: aqua" />
            <h4>Business Hours</h4>
            <ul class="list-group" style="margin: 0px; padding-left: 30px">
                <li class="list-group-item" style="border-color: brown; width: 100%">Mon - Fri<span class="badge">9:30 AM - 7:00 PM</span></li>
                <li class="list-group-item" style="border-color: brown; width: 100%">Saturday<span class="badge">9:30 AM - 6:30 PM</span></li>
                <li class="list-group-item" style="border-color: brown; width: 100%">Sunday<span class="badge">10:30 AM - 5:00 PM</span></li>
            </ul>


            <p class="lead" style="font-size: inherit">Write something here</p>
            <p><a href="Contact.aspx" class="btn btn-primary btn-lg">Contact Us &raquo;</a></p>
        </div>
        
    </div>
    

</asp:Content>
