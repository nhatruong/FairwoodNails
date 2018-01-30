<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ImagesFromDB.aspx.cs" Inherits="ImagesFromDB" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <script>
        $(document).ready(function () {
            var t = $(".item:first").prop("class","item active");
           
        });

    </script>
    <div id="myCarousel" class="carousel slide" data-ride="carousel" style="background-color:black">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
          
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <div class="item">
                        <%-- <img src='ImageFromDB.ashx?ID=<%# DataBinder.Eval(Container.DataItem, "ID") %>' alt="Logo" />--%>
                        <asp:Image ID="Image1" ImageUrl='<%#DataBinder.Eval(Container.DataItem, "FileName") %>' runat="server" Height="400" />
                        <div class="carousel-caption">
                            <h3>
                                <asp:Label ID="titleLbl" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Title") %>'></asp:Label></h3>
                            <p>
                                <asp:Label ID="imageDescriptionLbl" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"imageDescription") %>'></asp:Label>
                            </p>
                        </div>
                    </div>
                   
                </ItemTemplate>

            </asp:Repeater>
             <asp:SqlDataSource ID="SqlDataSource1"
                    ConnectionString="<%$ ConnectionStrings:Pubs %>"
                    SelectCommand="SELECT * FROM myimages"
                    runat="server"></asp:SqlDataSource>
        </div>
       
            

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
  
  
            
</asp:Content>

