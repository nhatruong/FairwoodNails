<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="SlideShow.aspx.cs" Inherits="CMS_SlideShow" MaintainScrollPositionOnPostback="true" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <style>
      .fileName{
          display:none;
      }
  </style> 
    <div> 
    <script>
        $(document).ready(function () {
          /*  $(":file").on("click", function () {
                $(".alert-info").css("display", "none");
            })*/
            
            
        });
        
   /*     function UploadCompleteAll() {
            $(":submit").click();
        };*/
    </script>  
      -
        <ajaxToolkit:AjaxFileUpload ID="AjaxFileUpload1" runat="server" OnUploadComplete="AjaxFileUpload1_UploadComplete"/>
  <%--       <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Always">
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="addBtn" />
            </Triggers>
            <ContentTemplate>

       <%=DateTime.Now.ToString() %>
                <asp:Label ID="label2" runat="server" Text="Label"></asp:Label>
                <div class="form-group">
                   
                    <label for="upFile">Filename:</label>
                    <asp:FileUpload ID="upFile" runat="server" CssClass="form-control" /><br />
                   <asp:Button ID="addBtn" Text="Add Image" OnClick="addBtn_Click" class="btn btn-default" runat="server" />  
                   
                    <br />
                    <asp:Label ID="duplicateLbl" runat="server" Visible="false" CssClass="alert alert-info"></asp:Label>
                </div>
                <div class="form-group">
                    <asp:Label ID="titleLbl" runat="server">Image Name:</asp:Label>
                    <asp:TextBox ID="titleTxt" runat="server" CssClass="form-control" placeholder="Image Name (Optional)"></asp:TextBox>

                </div>
                <div class="form-group">
                    <asp:Label ID="discripionLbl" runat="server">Image Description:</asp:Label>
                    <asp:TextBox ID="descriptionTxt" runat="server" CssClass="form-control" placeholder="Image Description (Optional)"></asp:TextBox>

                </div>   
                           
                   </ContentTemplate>
        </asp:UpdatePanel>     
       
     --%>                   <br />
                        <hr />
                      
                        <h3><b>Current Slide Show</b></h3>
                        <div>
                         <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Always">
                                 <Triggers>
                                     <asp:AsyncPostBackTrigger ControlID="slideshowGridview" />
                                 </Triggers>
                                <ContentTemplate> 
                                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Show Upload" CssClass="btn btn-primary" />
                                     <asp:Label ID="Label1" runat="server"></asp:Label>
                                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                    <span class="label label-info">Last uploaded at: <%=DateTime.Now.ToString() %></span>

                                    <asp:GridView ID="slideshowGridview" runat="server" AutoGenerateColumns="false"
                                        DataKeyNames="Id"  OnRowEditing="slideshowGridview_RowEditing"  OnRowDeleting="slideshowGridview_RowDeleting"
                                        OnRowCancelingEdit="slideshowGridview_RowCancelingEdit" OnRowCommand="slideshowGridview_RowCommand" OnRowUpdating="slideshowGridview_RowUpdating" CssClass="table table-striped" GridLines="None">
                                        <Columns>
                                           
                                             <asp:CommandField ShowEditButton="true" ButtonType="Button" ControlStyle-CssClass="btn btn-primary" ShowCancelButton="true" CausesValidation="false"  />
                                                
                                            
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:Button ID="AddButton" runat="server" CssClass="btn btn-primary"
                                                        CommandName="delete" OnClientClick='alert("do you want to delete this row?")'
                                                        CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"
                                                        Text="Delete" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Title">
                                                <ItemTemplate><%# Eval("Title")%></ItemTemplate>
                                              <EditItemTemplate>
                                                    <asp:TextBox ID="titleTxt" runat="server" Text='<%# Bind("Title")%>'  CssClass="form-control"></asp:TextBox>
                                                </EditItemTemplate>     
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Image Description">
                                                <ItemTemplate><%# Eval("ImageDescription")%></ItemTemplate>
                                               <EditItemTemplate>
                                                   <asp:TextBox ID="imageDescriptionTxt" runat="server" Text='<%# Bind("ImageDescription")%>' CssClass="form-control" ></asp:TextBox>
                                               </EditItemTemplate>
                                            </asp:TemplateField>                                           
                                            <asp:TemplateField HeaderText="Image">
                                                <ItemTemplate>
                                                     <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("FileName")%>' Height="100"/>
                                                </ItemTemplate>
                                               <EditItemTemplate>
                                                   <asp:Image ID="Image1" runat="server" ImageUrl='<%#Bind("FileName")%>' Height="100"/>
                                               </EditItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                </ContentTemplate>
                            </asp:UpdatePanel>           
                    
                            
                        </div>
             </div>     
                        
   
</asp:Content>

