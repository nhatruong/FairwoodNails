<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
  
    <ajaxToolkit:AjaxFileUpload ID="AjaxFileUpload1" runat="server" OnUploadComplete="AjaxFileUpload1_UploadComplete" />
  
    <asp:Label ID="Label1" runat="server"></asp:Label>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

     <asp:Button ID="Button2" runat="server" Text="Display Your Upload" OnClick="Button2_Click" />
    <asp:GridView ID="GridView1" runat="server" DataKeyNames="Id" AutoGenerateColumns="False">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("FileName")%>' Height="100" />
                </ItemTemplate>
            </asp:TemplateField>

            <%-- 
         <%# string.IsNullOrEmpty(Eval("Title").ToString())?"No Data" : Eval("Title")%>
           <asp:BoundField DataField="FileName" HeaderText="FileName" SortExpression="FileName" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="ImageDescription" HeaderText="ImageDescription" SortExpression="ImageDescription" />
            --%>
        </Columns>
    </asp:GridView>
     </ContentTemplate>
    </asp:UpdatePanel>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Pubs %>" SelectCommand="SELECT * FROM [Images]"></asp:SqlDataSource>
            
</asp:Content>

