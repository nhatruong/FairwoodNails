<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="CMS_CMS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
   
     <div class="container" style="border:dashed">
         
 
  <div class="form-horizontal" style="border:double">
                           
    <div class="form-group">
        
      <label class="control-label col-sm-2" for="email">About Your Business</label>
        <div class="col-sm-12"> 
          <asp:TextBox ID="aboutTxt" cssClass="form-control" runat="server" placeholder="Something About Your Business" TextMode="MultiLine" Rows="5" Width="100%"></asp:TextBox>        
      </div>          
    </div>
    <hr />
          
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Street Number and Name</label>
      <div class="col-sm-10">
          <asp:TextBox ID="streetNumberandNameTxt" runat="server"  cssClass="form-control"></asp:TextBox>        
      </div>
    </div>
   <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">City</label>
      <div class="col-sm-10">
          <asp:TextBox ID="cityTxt" runat="server"  cssClass="form-control"></asp:TextBox>        
      </div>
    </div>
      <div class="form-group">
          <label class="control-label col-sm-2" for="pwd">State</label>
          <div class="col-sm-10">
              <asp:TextBox ID="stateTxt" runat="server" CssClass="form-control"></asp:TextBox>
          </div>
      </div>
      <div class="form-group">
          <label class="control-label col-sm-2" for="pwd">Zip Code</label>
          <div class="col-sm-10">
              <asp:TextBox ID="zipCodeTxt" runat="server" CssClass="form-control"></asp:TextBox>
          </div>
      </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Phone Number</label>
      <div class="col-sm-10">
          <asp:TextBox ID="phoneTxt" runat="server"  cssClass="form-control"></asp:TextBox>        
      </div>
    </div>
      <hr />
      
      <div class="form-group">
          <h1>Business Hours</h1><br />
          <label class="control-label col-sm-2" for="pwd">Monday-Friday Open Hour</label>
          <div class="col-sm-4">
             <asp:DropDownList ID="mondayFridayOpenHourDDL" runat="server" CssClass="form-control">
                  <asp:ListItem Value="9:00 AM">9:00 AM</asp:ListItem>
                  <asp:ListItem Value="9:30 AM">9:30 AM</asp:ListItem>
                  <asp:ListItem Value="10:00 AM">10:00 AM</asp:ListItem>
                  <asp:ListItem Value="10:30 AM">10:30 AM</asp:ListItem>
              </asp:DropDownList>
          </div>
      </div> 
       <div class="form-group">
          <label class="control-label col-sm-2" for="pwd">Monday-Friday Close Hour</label>
          <div class="col-sm-4">
              <asp:DropDownList ID="mondayFridayCloseHourDDL" runat="server" CssClass="form-control">
                  <asp:ListItem Value="6:00 PM">6:00 PM</asp:ListItem>
                  <asp:ListItem Value="6:30 PM">6:30 PM</asp:ListItem>
                  <asp:ListItem Value="7:00 PM">7:00 PM</asp:ListItem>
                  <asp:ListItem Value="7:30 PM">7:30 PM</asp:ListItem>
                  <asp:ListItem Value="8:00 PM">8:00 PM</asp:ListItem>
                  <asp:ListItem Value="8:30 PM">8:30 PM</asp:ListItem>
              </asp:DropDownList>
              
          </div>
      </div> 
      <div class="form-group">
          <label class="control-label col-sm-2" for="pwd">Saturday Open Hour</label>
          <div class="col-sm-10">
                  <asp:DropDownList ID="saturdayOpenHourDDL" runat="server" CssClass="form-control">
                  <asp:ListItem Value="9:00 AM">9:00 AM</asp:ListItem>
                  <asp:ListItem Value="9:30 AM">9:30 AM</asp:ListItem>
                  <asp:ListItem Value="10:00 AM">10:00 AM</asp:ListItem>
                  <asp:ListItem Value="10:30 AM">10:30 AM</asp:ListItem>
              </asp:DropDownList>           
          </div>
      </div> 
      <div class="form-group">
          <label class="control-label col-sm-2" for="pwd">Saturday Close Hour</label>
          <div class="col-sm-10">
               <asp:DropDownList ID="saturdayCloseHourDDL" runat="server" CssClass="form-control">
                  <asp:ListItem Value="6:00 PM">6:00 PM</asp:ListItem>
                  <asp:ListItem Value="6:30 PM">6:30 PM</asp:ListItem>
                  <asp:ListItem Value="7:00 PM">7:00 PM</asp:ListItem>
                  <asp:ListItem Value="7:30 PM">7:30 PM</asp:ListItem>
                  <asp:ListItem Value="8:00 PM">8:00 PM</asp:ListItem>
                  <asp:ListItem Value="8:30 PM">8:30 PM</asp:ListItem>
              </asp:DropDownList>
          </div>
      </div>
      <div class="form-group">
          <label class="control-label col-sm-2" for="pwd">Sunday Open Hour</label>
          <div class="col-sm-10">
                  <asp:DropDownList ID="sundayOpenHourDDL" runat="server" CssClass="form-control">
                  <asp:ListItem Value="9:00 AM">9:00 AM</asp:ListItem>
                  <asp:ListItem Value="9:30 AM">9:30 AM</asp:ListItem>
                  <asp:ListItem Value="10:00 AM">10:00 AM</asp:ListItem>
                  <asp:ListItem Value="10:30 AM">10:30 AM</asp:ListItem>
              </asp:DropDownList>           
          </div>
      </div> 
        <div class="form-group">
          <label class="control-label col-sm-2" for="pwd">Sunday Close Hour</label>
          <div class="col-sm-10">
               <asp:DropDownList ID="sundayCloseHourDDL" runat="server" CssClass="form-control">
                  <asp:ListItem Value="6:00 PM">6:00 PM</asp:ListItem>
                  <asp:ListItem Value="6:30 PM">6:30 PM</asp:ListItem>
                  <asp:ListItem Value="7:00 PM">7:00 PM</asp:ListItem>
                  <asp:ListItem Value="7:30 PM">7:30 PM</asp:ListItem>
                  <asp:ListItem Value="8:00 PM">8:00 PM</asp:ListItem>
                  <asp:ListItem Value="8:30 PM">8:30 PM</asp:ListItem>
              </asp:DropDownList>
          </div>
      </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
          <asp:Button ID="submitBtn" cssClass="btn btn-default" runat="server" Text="Submit" OnClick="submitBtn_Click" />
        <!--<button type="submit" class="btn btn-default">Submit</button>-->
      </div>
    </div>
  </div>
</div>
</asp:Content>

