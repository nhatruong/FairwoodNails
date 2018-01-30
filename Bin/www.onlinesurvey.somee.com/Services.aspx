<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Services.aspx.cs" Inherits="Services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <style>
        .pendicure {
            background-image: url(MyImage/pendicure.jpg);
        }
        .menicure {
            background-image: url(MyImage/menicure.jpg); background-color:blue;
        }
    </style>
    <script>
        $(document).ready(function () {
            $("div[title='service']").hide();
            $(":radio").on("click", function () {
                var val = $(this).val();
                $("div[title='service']").each(function () {
                    if ($(this).attr("class") == val) {
                        $(this).show();
                        if ($(this).attr("class") == "eyelash") {
                            $("body").css({ "background": "url(MyImage/eyelash.jpg)", "background-position": "70%"});
                        }
                        if ($(this).attr("class") == "nail") {
                            //$("body").css("background", "url(MyImage/menicure.jpg)");
                            $("body").addClass("menicure");
                        }
                        if ($(this).attr("class") == "waxing") {
                            $("body").css({ "background": "url(MyImage/wax.jpg)", "background-position": "70%" });
                        }
                    }
                    else {
                        $(this).hide()
                    }
                   
                        
                    
                });
            });
        });
    </script>
    <br /><br /><br /><br />
    <p> Welcome to your Service. We always use the best products for our customers</p>
    <hr />

    <div class="row" style="color:white">                    
            <div class="col-md-3 col-sm-4"><asp:RadioButton ID="nail" GroupName="services" runat="server" Text="Nails" /></div>
            <div class="col-md-3 col-sm-4"><asp:RadioButton ID="pendicure" GroupName="services" runat="server" Text="Pendicure" /></div>
            <div class="col-md-6 col-sm-4"><asp:RadioButton ID="waxing" GroupName="services" runat="server" Text="Waxing" /></div>
            
            <div class="col-md-3 col-sm-4"><asp:RadioButton ID="facial" GroupName="services" runat="server" Text="Facials" /></div>
            <div class="col-md-3 col-sm-4"><asp:RadioButton ID="eyelash" GroupName="services" runat="server" Text="Eyelash Exention" /></div>
            <div class="col-md-3 col-sm-4"><asp:RadioButton ID="additional" GroupName="Services" runat="server" Text="Additional Services" /></div>       
    </div>
    <hr />

    <div class="row" style="color:white">
        <div id="nailservice" title="service" class="nail">
            <div class="col-md-4 col-sm-12">
                <asp:Panel ID="Panel1" runat="server">
                    <h3>Type nails Services</h3>
                    <p>
                        something about nails services something about nails services something about nails services
                something about nails services something about nails services something about nails services
                 something about nails services something about nails services something about nails services
                something about nails services something about nails services something about nails services
                    </p>

                </asp:Panel>
            </div>
            <div class="col-md-4 col-sm-12">
                <asp:Panel ID="Panel2" runat="server">
                    <h3>Type of nails Services</h3>
                    <p>
                        something about nails services something about nails services something about nails services
                something about nails services something about nails services something about nails services
                 something about nails services something about nails services something about nails services
                something about nails services something about nails services something about nails services
                    </p>
                </asp:Panel>
            </div>
            <div class="col-md-6 col-sm-12">
                <asp:Panel ID="Panel13" runat="server">
                    <h3>Type nails Services</h3>
                    <p>
                        something about nails services something about nails services something about nails services
                something about nails services something about nails services something about nails services
                 something about nails services something about nails services something about nails services
                something about nails services something about nails services something about nails services
                    </p>

                </asp:Panel>
            </div>
            <div class="col-md-6 col-sm-12">
                <asp:Panel ID="Panel14" runat="server">
                    <h3>Type of nails Services</h3>
                    <p>
                        something about nails services something about nails services something about nails services
                something about nails services something about nails services something about nails services
                 something about nails services something about nails services something about nails services
                something about nails services something about nails services something about nails services
                    </p>

                </asp:Panel>

            </div>
        </div>
            
        
        <div id="pendicureservice" title="service" class="pendicure">
            <div class="col-md-6 col-sm-12">
                <asp:Panel ID="Panel3" runat="server">
                    <h3>Type pedicure Services</h3>
                    <p>
                        something about nails services something about nails services something about nails services
                something about nails services something about nails services something about nails services
                 something about nails services something about nails services something about nails services
                something about nails services something about nails services something about nails services
                    </p>

                </asp:Panel>
            </div>
            <div class="col-md-6 col-sm-12">
                <asp:Panel ID="Panel4" runat="server">
                    <h3>Type of pedicure Services</h3>
                    <p>
                        something about nails services something about nails services something about nails services
                something about nails services something about nails services something about nails services
                 something about nails services something about nails services something about nails services
                something about nails services something about nails services something about nails services
                    </p>
                </asp:Panel>
            </div>
            <div class="col-md-6 col-sm-12">
                <asp:Panel ID="Panel15" runat="server">
                    <h3>Type nails Services</h3>
                    <p>
                        something about nails services something about nails services something about nails services
                something about nails services something about nails services something about nails services
                 something about nails services something about nails services something about nails services
                something about nails services something about nails services something about nails services
                    </p>

                </asp:Panel>
            </div>
            <div class="col-md-6 col-sm-12">
                <asp:Panel ID="Panel16" runat="server">
                    <h3>Type of pedicure Services</h3>
                    <p>
                        something about nails services something about nails services something about nails services
                something about nails services something about nails services something about nails services
                 something about nails services something about nails services something about nails services
                something about nails services something about nails services something about nails services
                    </p>

                </asp:Panel>

            </div>
        </div>
        <div id="waxingservice" title="service" class="waxing">
            <div class="col-md-6 col-sm-12">
                <asp:Panel ID="Panel5" runat="server">
                    <h3>Type of waxing Services</h3>
                    <p>
                        something about nails services something about nails services something about nails services
                something about nails services something about nails services something about nails services
                 something about nails services something about nails services something about nails services
                something about nails services something about nails services something about nails services
                    </p>

                </asp:Panel>
            </div>
            <div class="col-md-6 col-sm-12">
                <asp:Panel ID="Panel6" runat="server">
                    <h3>Type of waxing Services</h3>
                    <p>
                        something about nails services something about nails services something about nails services
                something about nails services something about nails services something about nails services
                 something about nails services something about nails services something about nails services
                something about nails services something about nails services something about nails services
                    </p>

                </asp:Panel>
            </div>
            <div class="col-md-6 col-sm-12">
                <asp:Panel ID="Panel17" runat="server">
                    <h3>Type waxing Services</h3>
                    <p>
                        something about nails services something about nails services something about nails services
                something about nails services something about nails services something about nails services
                 something about nails services something about nails services something about nails services
                something about nails services something about nails services something about nails services
                    </p>

                </asp:Panel>
            </div>
            <div class="col-md-6 col-sm-12">
                <asp:Panel ID="Panel18" runat="server">
                    <h3>Type of waxing Services</h3>
                    <p>
                        something about nails services something about nails services something about nails services
                something about nails services something about nails services something about nails services
                 something about nails services something about nails services something about nails services
                something about nails services something about nails services something about nails services
                    </p>

                </asp:Panel>

            </div>
        </div>
        <div id="facialservice" title="service" class="facial">
            <div class="col-md-6 col-sm-12">
                <asp:Panel ID="Panel7" runat="server">
                    <h3>Type facial Services</h3>
                    <p>
                        something about nails services something about nails services something about nails services
                something about nails services something about nails services something about nails services
                 something about nails services something about nails services something about nails services
                something about nails services something about nails services something about nails services
                    </p>

                </asp:Panel>
            </div>
            <div class="col-md-6 col-sm-12">
                <asp:Panel ID="Panel8" runat="server">
                    <h3>Type of facial Services</h3>
                    <p>
                        something about nails services something about nails services something about nails services
                something about nails services something about nails services something about nails services
                 something about nails services something about nails services something about nails services
                something about nails services something about nails services something about nails services
                    </p>
                </asp:Panel>
            </div>
            <div class="col-md-6 col-sm-12">
                <asp:Panel ID="Panel19" runat="server">
                    <h3>Type facial Services</h3>
                    <p>
                        something about nails services something about nails services something about nails services
                something about nails services something about nails services something about nails services
                 something about nails services something about nails services something about nails services
                something about nails services something about nails services something about nails services
                    </p>

                </asp:Panel>
            </div>
            <div class="col-md-6 col-sm-12">
                <asp:Panel ID="Panel20" runat="server">
                    <h3>Type of facial Services</h3>
                    <p>
                        something about nails services something about nails services something about nails services
                something about nails services something about nails services something about nails services
                 something about nails services something about nails services something about nails services
                something about nails services something about nails services something about nails services
                    </p>

                </asp:Panel>

            </div>
        </div>
        <div id="eyelashextensionservice" title="service" class="eyelash" style="color:white">
            <div class="col-md-6 col-sm-12">
                <asp:Panel ID="Panel9" runat="server">
                    <h3>Type eyelash Services</h3>
                    <p>
                        something about nails services something about nails services something about nails services
                something about nails services something about nails services something about nails services
                 something about nails services something about nails services something about nails services
                something about nails services something about nails services something about nails services
                    </p>

                </asp:Panel>
            </div>
            <div class="col-md-6 col-sm-12">
                <asp:Panel ID="Panel10" runat="server">
                    <h3>Type of eyelash Services</h3>
                    <p>
                        something about nails services something about nails services something about nails services
                something about nails services something about nails services something about nails services
                 something about nails services something about nails services something about nails services
                something about nails services something about nails services something about nails services
                    </p>

                </asp:Panel>

            </div>
            <div class="col-md-6 col-sm-12">
                <asp:Panel ID="Panel21" runat="server">
                    <h3>Type eyalash Services</h3>
                    <p>
                        something about nails services something about nails services something about nails services
                something about nails services something about nails services something about nails services
                 something about nails services something about nails services something about nails services
                something about nails services something about nails services something about nails services
                    </p>

                </asp:Panel>
            </div>
            <div class="col-md-6 col-sm-12">
                <asp:Panel ID="Panel22" runat="server">
                    <h3>Type of eyelash Services</h3>
                    <p>
                        something about nails services something about nails services something about nails services
                something about nails services something about nails services something about nails services
                 something about nails services something about nails services something about nails services
                something about nails services something about nails services something about nails services
                    </p>

                </asp:Panel>

            </div>
        </div>
        <div id="additionalservice" title="service" class="additional">
            <div class="col-md-6 col-sm-12">
                <asp:Panel ID="Panel11" runat="server">
                    <h3>Type additional Services</h3>
                    <p>
                        something about nails services something about nails services something about nails services
                something about nails services something about nails services something about nails services
                 something about nails services something about nails services something about nails services
                something about nails services something about nails services something about nails services
                    </p>

                </asp:Panel>
            </div>
            <div class="col-md-6 col-sm-12">
                <asp:Panel ID="Panel12" runat="server">
                    <h3>Type of additional Services</h3>
                    <p>
                        something about nails services something about nails services something about nails services
                something about nails services something about nails services something about nails services
                 something about nails services something about nails services something about nails services
                something about nails services something about nails services something about nails services
                    </p>

                </asp:Panel>
            </div>
            <div class="col-md-6 col-sm-12">
                <asp:Panel ID="Panel23" runat="server">
                    <h3>Type of addtional Services</h3>
                    <p>
                        something about nails services something about nails services something about nails services
                something about nails services something about nails services something about nails services
                 something about nails services something about nails services something about nails services
                something about nails services something about nails services something about nails services
                    </p>

                </asp:Panel>
            </div>
            <div class="col-md-6 col-sm-12">
                <asp:Panel ID="Panel24" runat="server">
                    <h3>Type of additional Services</h3>
                    <p>
                        something about nails services something about nails services something about nails services
                something about nails services something about nails services something about nails services
                 something about nails services something about nails services something about nails services
                something about nails services something about nails services something about nails services
                    </p>

                </asp:Panel>

            </div>
        </div>
    </div>
</asp:Content>

