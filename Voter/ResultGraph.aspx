<%@ Page Title="" Language="C#" MasterPageFile="~/Voter/Voter.Master" AutoEventWireup="true" CodeBehind="ResultGraph.aspx.cs" Inherits="Temp.Voter.ResultGraph" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
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
                    
                    
                    <asp:Chart ID="Chart1" runat="server" Width="351px" Height="264px" DataSourceID="SqlDataSource1">
                        <Titles>
                            <asp:Title Text="Result">

                            </asp:Title>
                        </Titles>
                        <Series>
                            <asp:Series Name="Series1" ChartArea="ChartArea1" XValueMember="fname" YValueMembers="vote">
                                <Points>
                                   

                                </Points>
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                                <AxisX Title="Candidate Name"></AxisX>
                                <AxisY Title="Vote"></AxisY>
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                    
                    
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [fname], [vote] FROM [AddCandidate] WHERE ([electiontitle] = @electiontitle)">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="electiontitle" QueryStringField="str" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    
                    
                </div>
                <div class="row form-group">
                        <asp:Button ID="Button1" runat="server" Height="39px"  BackColor="#343A40" CssClass="btn btn-primary btn-block" Text="Load Chart" Width="255px" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
