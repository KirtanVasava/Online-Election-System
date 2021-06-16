<%@ Page Language="C#" MasterPageFile="temp.Master" AutoEventWireup="true" CodeFile="CreateElection.aspx.cs" Inherits="Temp.a1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headplaceholder" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="Server">
      
        <div class="col-lg-12">
        <div class="card">
    
            <div class="btn-group bg-danger">
            
            <asp:Button ID="Button1" runat="server" Text="Create Election" CssClass="btn btn-info" BorderStyle="None" CausesValidation="False" BackColor="#343A40"  />
        </div>

            <div class="card-body">
        
        <div class="row form-group">
            <asp:Label runat="server" Text="Label" class="col-md-2 col-form-label "> Election Title</asp:Label>

            <div class="col-md-9">
            <asp:TextBox runat="server" id="TextBox1" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                </div>
            
        </div>

        <div class="row form-group">
            <asp:Label runat="server" Text="Label" class="col-md-2 col-form-label "> Election Date</asp:Label>

           

            <div class="col-md-9">
            <asp:TextBox runat="server"  id="TextBox2" TextMode="Date" CssClass="form-control"></asp:TextBox>
                </div>
            
        </div>


         <div class="row form-group">
            <asp:Label runat="server" Text="Label" class="col-md-2 col-form-label "> Election Time</asp:Label>

             <div class="col-md-9">

             <asp:Label runat="server" Text="Label "> From </asp:Label>

            <asp:TextBox runat="server" id="TextBox3" TextMode="Time" CssClass="form-control"> </asp:TextBox>
                

             <asp:Label runat="server" Text="Label" class="col-md-2 col-form-label "> To </asp:Label>
            
             <asp:TextBox runat="server" id="TextBox4" TextMode="Time" CssClass="form-control"> </asp:TextBox>
            </div>
        </div>

         <div class="row form-group">
            <asp:Label runat="server" Text="Label" class="col-md-2 col-form-label "> Election Result Date</asp:Label>

             <div class="col-md-9">
            <asp:TextBox runat="server" id="TextBox5" TextMode="Date" CssClass="form-control"> </asp:TextBox>
                 </div>
            
        </div>

        
        <div class="row form-group"  >
            <asp:Label ID="Label1" runat="server" class="col-md-2 col-form-label " Text="Label">Candidate 1</asp:Label>
            
            <div class="col-md-9">
               <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server"></asp:DropDownList>  
             </div>
            </div>
          
            <div class="row form-group"  >
            <asp:Label ID="Label2" runat="server" class="col-md-2 col-form-label " Text="Label">Candidate 2</asp:Label>
            
            <div class="col-md-9">
               <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server"></asp:DropDownList>  
             </div>
            </div>
                 <div class="row form-group"  >
            <asp:Label ID="Label3" runat="server" class="col-md-2 col-form-label " Text="Label">Candidate 3</asp:Label>
            
            <div class="col-md-9">
               <asp:DropDownList ID="DropDownList3" CssClass="form-control" runat="server"></asp:DropDownList>  
             </div>
            </div>
                 <div class="row form-group"  >
            <asp:Label ID="Label4" runat="server" class="col-md-2 col-form-label " Text="Label">Candidate 4</asp:Label>
            
            <div class="col-md-9">
               <asp:DropDownList ID="DropDownList4" CssClass="form-control" runat="server"></asp:DropDownList>  
             </div>
            </div>

               <div class="btn-group bg-danger" >
        <asp:Button ID="Button2" runat="server" Text="Done" OnClick="submit" BackColor="#343A40"  CssClass="btn btn-info" />
                    </div>
                    
          
          </div>
            </div>
            </div>
            
          
    
        
</asp:Content>
