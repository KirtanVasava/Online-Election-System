<%@ Page Title="" Language="C#" MasterPageFile="Voter.Master" AutoEventWireup="true" CodeFile="vote1.aspx.cs" Inherits="Voter.vote1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headplaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div class="col-lg-12">
        <div class="card">

             <div class="btn-group bg-primary" >
                <asp:Button ID="Button2" runat="server" Text="Vote" CssClass="btn btn-info" BorderStyle="None" CausesValidation="False" BackColor="#343A40" />
            </div>
             

           <div class="card-body"> 
    <div class="row form-group" >
            
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="fullname" DataValueField="fullname" Height="58px" Width="238px">
        </asp:RadioButtonList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [fname] + [lname] as [fullname] FROM [AddCandidate] WHERE ([electiontitle] = @electiontitle)">
            <SelectParameters>
                <asp:QueryStringParameter Name="electiontitle" QueryStringField="str" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        </div>
         
            
                <div class="row form-group">
        
        <asp:Button ID="Button1" runat="server" Height="39px" OnClick="Button1_Click" BackColor="#343A40" CssClass="btn btn-primary btn-block" Text="Vote" Width="255px" />
  </div>

               </div>
            </div>
         </div>
</asp:Content>
