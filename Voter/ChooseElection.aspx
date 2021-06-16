<%@ Page Language="C#" MasterPageFile="Voter.Master"  AutoEventWireup="true" CodeFile="ChooseElection.aspx.cs" Inherits="Temp.Voter.WebForm1" %>


<asp:Content ID="Content3" ContentPlaceHolderID="headplaceholder" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="Server">
    <div class="col-lg-12">
        <div class="card">
           
            <div class="btn-group bg-primary" >
                <asp:Button ID="Button2" runat="server" Text="Choose Election" CssClass="btn btn-info" BorderStyle="None" CausesValidation="False" BackColor="#343A40" />
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
                                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Database1 %>" SelectCommand="SELECT [electiontitle] FROM [CreateElection]"></asp:SqlDataSource>
           
                             </div> 
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
                             <asp:Button runat="server" OnClick="Button1_Click" Text="Check"  BackColor="#343A40" CssClass="btn btn-primary btn-block" />
                                </div>
                            </div>
                </div>
                </div>
                
        </div>
               </div>
   
        
</asp:Content>