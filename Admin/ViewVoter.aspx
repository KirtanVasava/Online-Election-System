<%@ Page Title="" Language="C#" MasterPageFile="temp.Master" AutoEventWireup="true" CodeBehind="ViewVoter.aspx.cs" Inherits="Admin.ViewVoter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headplaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    

          <div class="col-lg-12">
        <div class="card">
        
            <div class="btn-group bg-primary" >
                <asp:Button ID="Button2" runat="server" Text="View Voter" CssClass="btn btn-info" BorderStyle="None" CausesValidation="False" BackColor="#343A40" />
            </div>
            <asp:Repeater ID="r1" runat="server">
        <HeaderTemplate>

            <table class="table table-bordered">
                <tr>
                    <th>FirstName</th>
                    <th>LastName</th>
                    <th>Voter ID</th>
                    <th>Mobile No.</th>
                    <th>Email</th>
                    <th>Status</th>
                    <th>Active</th>
                    <th>Deactive</th>
                </tr>
            

        </HeaderTemplate>

        <ItemTemplate>

            <tr>
                
                <td><%#Eval("firstname") %></td>
                <td><%#Eval("lastname") %></td>
                <td><%#Eval("voterid") %></td>
                <td><%#Eval("mobileno") %></td>
                <td><%#Eval("email") %></td>
                <td><%#Eval("approved") %></td>
                <td><a href="Active.aspx?id=<%#Eval("id") %>">Active</a></td>
                <td><a href="Deactive.aspx?id=<%#Eval("id") %>">Deative</a></td>
            </tr>

        </ItemTemplate>

                 </asp:Repeater>
        </div>
              </div>
        
   
</asp:Content>