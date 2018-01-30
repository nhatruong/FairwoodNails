<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server"> 
    <link href="MyStyles/smallscreen.css" rel="stylesheet" />
    <link href="MyStyles/desktop.css" rel="stylesheet" media="(min-width: 600px)"/>
    <script>
        $(document).ready(function () {
            var t = $(".item:first").prop("class", "item active");
            //count # of slideshow
            var count = $(".carousel-inner .item").length; //alert(count); //$("p").clone().appendTo("body");
            var liElement=$(".carousel-indicators>li");
            for (var i = 1; i < count; i++)
            {
                var t = liElement.clone().prop("data-target", "#bestCarsCarousel").prop("data-slide-to",i.toString());
                t.removeProp("class").appendTo(".carousel-indicators");      //t = liElement.clone().attr("data-slide-to");
                //alert(t.prop("data-slide-to")); //liElement.clone().attr({data-slide-to:"i", data-target:"#bestCarsCarousel"});// "i").attr("data-target","#bestCarsCarousel").removeProp("class").appendTo(".carousel-indicators");
            }
            //  $("img").attr({width: "150", height: "100"});        
          
        });

    </script>
    <style>
        /*center thead image inmage input slideshow*/
      .carousel-inner > .item > img {
            margin: 0 auto;
      }
    </style>
    <div class="row" >
        <div class="col-md-8">
            <div id="bestCarsCarousel" class="carousel slide" data-ride="carousel" >
                <!-- Indicators -->
               <ol class="carousel-indicators">
                    <li data-target="#bestCarsCarousel" data-slide-to="0" class="active"></li>
                      
                </ol>
                  <!-- Wrapper for slides -->
                <div class="carousel-inner"  role="listbox">
                    <asp:Repeater ID="slideShowRepeater" runat="server" OnItemDataBound="slideShowRepeater_ItemDataBound">
                        <ItemTemplate>
                            <div class="item">
                                 
                                <asp:Image ID="slideShowImg" ImageUrl='<%#DataBinder.Eval(Container.DataItem, "FileName") %>' CssClass="slideshowimage img-thumbnail img-responsive" runat="server" AlternateText="image" />
                                <div class="carousel-caption">
                                    <h3>
                                        <asp:Label ID="titleLbl" runat="server"  Text='<%# DataBinder.Eval(Container.DataItem,"Title") %>'>></asp:Label></h3>
                                    <p>
                                        <asp:Label ID="imageDescriptionLbl" runat="server"  Text='<%# DataBinder.Eval(Container.DataItem,"imageDescription") %>'>></asp:Label>
                                    </p>
                                </div>
                            </div>

                        </ItemTemplate>

                    </asp:Repeater>
          <%--           <asp:SqlDataSource ID="SqlDataSource1"
                        ConnectionString="<%$ ConnectionStrings:Pubs %>"
                        SelectCommand="SELECT * FROM myimages"
                        runat="server"></asp:SqlDataSource>
                --%></div>
            <div class="quang">
                <a class="left carousel-control" href="#bestCarsCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                </a>
                <a class="right carousel-control" href="#bestCarsCarousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
            </div>
            </div>          
            <div class="row">
                <div class="col-md-12" style="color:white">
                    <h2 style="font-family:'Buxton Sketch';font-size:xx-large; color:blueviolet">Welcome to Fairwood Nails</h2>
                    <asp:Label ID="aboutLbl" runat="server"></asp:Label>           
                </div>
            </div>
        </div>         
        <div class="col-md-1"></div>        
        <div class="col-md-3 jumbotron" style="font-size: inherit; box-shadow: 4px 4px; background-color:lightsalmon; padding:2%">
            <div class="row">
                <div class="col-sm-6 col-md-12">
                    <h4>Our Location</h4>
            <address>
                <asp:Literal ID="streetNumberandNameLtl" runat="server"></asp:Literal><br />
                <asp:Literal ID="cityLtl" runat="server"></asp:Literal>
                <asp:Literal ID="stateLtl" runat="server"></asp:Literal>
                <asp:Literal ID="zipCodeLtl" runat="server"></asp:Literal><br />
                <asp:Literal ID="phoneLtl" runat="server"></asp:Literal>                                                            
            </address>
            <hr style="color: aqua" />
                </div>
                <div class="col-sm-6 col-md-12">
                     <h4>Business Hours</h4>            
            <ul class="list-group">                               
                <li class="list-group-item" style="padding:1%">
                    <asp:Label ID="mondayFridayLbl" CssClass="businessday" runat="server">Mon-Fri<asp:Label ID="modayFridayHourLbl" runat="server" CssClass="businesshours"></asp:Label></asp:Label>
                </li>
                 <li class="list-group-item" style="padding:1%">
                    <asp:Label ID="saturdayLbl" CssClass="" runat="server">Saturday<asp:Label ID="saturdayHourLbl" CssClass="businesshours" runat="server"></asp:Label></asp:Label>
                </li>
                 <li class="list-group-item" style="padding:1%">
                    <asp:Label ID="sundayLbl" runat="server">Sunday<asp:Label ID="sundayHourLbl" CssClass="businesshours" runat="server"></asp:Label></asp:Label>
                </li>
            </ul>                
            <p class="lead" style="font-size: inherit">Write something here</p>
            <p><a href="Contact.aspx" class="btn btn-primary btn-lg">Contact Us &raquo;</a></p>
                </div>
            </div>
            
           
        </div>        
    </div>   
</asp:Content>
