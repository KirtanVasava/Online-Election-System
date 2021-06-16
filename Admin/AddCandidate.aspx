<%@ Page Language="C#" MasterPageFile="temp.Master" AutoEventWireup="true" CodeFile="AddCandidate.aspx.cs" Inherits="Temp.AddCandidate" %>


<asp:Content ID="Content1" ContentPlaceHolderID="headplaceholder" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="Server">

       <div class="col-lg-12">
        <div class="card">
 
            <div class="btn-group bg-danger" >
                <asp:Button ID="btn_panelquestion" runat="server" Text="Add Candidate" CssClass="btn btn-info" BorderStyle="None" CausesValidation="False" BackColor="#343A40" />
            </div>

            <div class="card-body"> 

                <div class="row">  
                    <div class="col-md-6">  
                        <div class="form-group">
    <asp:Label ID="Label1" runat="server" Text="Label" class="control-label">First Name</asp:Label>
                          
    <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
                              </div>  
                    </div>

                <div class="col-md-6">  
                        <div class="form-group">  
    <asp:Label ID="Label2" runat="server" Text="Label" class="control-label">Last Name</asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox> 
                            </div>
                    </div>
</div>
                <div class="row">  
                
                    <div class="col-md-6">  
                        <div class="form-group">  

    <asp:Label ID="Label3" runat="server" Text="Label" class="control-label">Gender</asp:Label>
    
    <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                <asp:ListItem Value="Silver"> Male </asp:ListItem>
                <asp:ListItem Value="DarkGray"> Female </asp:ListItem>
                
        </asp:DropDownList>
                            </div>
                        </div>
                <div class="col-md-6">  
                        <div class="form-group">  

    <asp:Label ID="Label4" runat="server" Text="Label" class="control-label">Birth Date</asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" TextMode="Date" class="form-control"></asp:TextBox>

                            </div>
                        </div>
                    </div>
                <div class="row">  
                
                    <div class="col-md-6">  
                        <div class="form-group">  

    <asp:Label ID="Label5" runat="server" Text="Label" class="control-label">Position</asp:Label>
    <asp:TextBox ID="TextBox4" runat="server" class="form-control"></asp:TextBox>

                            </div>
                        </div>
                            <div class="col-md-6">  
                        <div class="form-group">  


    <asp:Label ID="Label6" runat="server" Text="Label" class="control-label">Achievements</asp:Label>
    <asp:TextBox ID="TextBox5" runat="server" class="form-control"></asp:TextBox>

                            </div>
                        </div>
                    </div>
                <div class="row">  
                
                    <div class="col-md-6">  
                        <div class="form-group">  

    <asp:Label ID="Label7" runat="server" Text="Label" class="control-label">Photo</asp:Label>
    <asp:FileUpload ID="FileUpload1" runat="server" />

                            <asp:Label ID="lblMessage" runat="server" class="control-label"></asp:Label>

                            </div>
                        </div>
     
                    </div>
                                 <div class="btn-group bg-danger">
              
    <asp:Button ID="Button2" runat="server" CssClass="btn btn-info" BorderStyle="None" CausesValidation="False" BackColor="#343A40" Text="Add" OnClick="Button2_Click" />
                           </div>


</div>
           </div>
           </div>

</asp:Content>
