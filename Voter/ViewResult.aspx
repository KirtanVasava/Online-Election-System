<%@ Page Title="" Language="C#" MasterPageFile="~/Voter/Voter.Master" AutoEventWireup="true" CodeBehind="ViewResult.aspx.cs" Inherits="Temp.Voter.ViewResult" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headplaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div class="col-lg-12">
        <div class="card">
           
            <div class="btn-group bg-primary" >
                <asp:Button ID="Button2" runat="server" Text="View Result" CssClass="btn btn-info" BorderStyle="None" CausesValidation="False" BackColor="#343A40" />
            </div>
             
                 <div class="card-body text-center">
                    <label  >Please Choose Appropriate Election </label>
                  </div>

                <div class="container">
                 <div class="form-group">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="electiontitle" DataValueField="electiontitle" class="form-control" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                     </asp:DropDownList>
                 </div>
                 <div class="form-row">
                     <div class="col-md-6">
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [electiontitle] FROM [CreateElection]"></asp:SqlDataSource>
                      </div>    
                 </div>

                 <div class="container">
                    <div class="form-group">
                    </div>
                 </div>

                <div class="container">
                 <div class="form-group">
                         <div class="form-row">
                            <div class="col-md-2">

                                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Check"  BackColor="#343A40" CssClass="btn btn-primary btn-block"  />

                            </div>
                        </div>
                     </div>
                </div>
                </div>
            </div>
        </div>
</asp:Content>
