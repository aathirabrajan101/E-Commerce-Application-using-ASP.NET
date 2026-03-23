<%@ Page Title="" Language="C#" MasterPageFile="~/carousel.Master" AutoEventWireup="true" CodeBehind="BillPage.aspx.cs" Inherits="WebApplication_Project.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 104px;
        }
        .auto-style3 {
            width: 150px;
        }
        .auto-style4 {
            width: 104px;
            height: 30px;
        }
        .auto-style7 {
            height: 30px;
        }
        .auto-style8 {
            width: 179px;
        }
        .auto-style9 {
            width: 183px;
        }
    .auto-style10 {
        width: 130%;
        height: 55px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <body>
        <table class="w-100">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style9">
                <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#339966" Text="Your Bill"></asp:Label>
            </td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style9">
                <asp:Label ID="Label13" runat="server" Font-Bold="True" Text="Invoice Number:"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:Label ID="lbbillnum" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style9">
                <asp:Label ID="Label14" runat="server" Font-Bold="True" Text="Date and Time:"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:Label ID="lbdate" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style9">
                <asp:Label ID="Label15" runat="server" Font-Bold="True" Text="Name:"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:Label ID="lbname" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style9">
                <asp:Label ID="Label16" runat="server" Font-Bold="True" Text="Address:"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:Label ID="lbaddr" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style9">
                <asp:Label ID="Label17" runat="server" Font-Bold="True" Text="Contact Number:"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:Label ID="lbphn" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td colspan="2">&nbsp;<asp:Label ID="Label24" runat="server" Font-Bold="True" Text="Ordered Items"></asp:Label>
            </td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td colspan="3" rowspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#FFFFCC" BorderColor="#000099" BorderWidth="3px" Height="134px" Width="439px">
                    <Columns>
                        <asp:BoundField DataField="Pro_Name" HeaderText="Item" />
                        <asp:BoundField DataField="Order_Quantity" HeaderText="Quantity" />
                        <asp:BoundField DataField="Pro_Price" HeaderText="Rate" />
                        <asp:BoundField DataField="Order_Subtotal" HeaderText="Subtotal" />
                    </Columns>
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style7"></td>
            <td class="auto-style7"></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style9">
                <asp:Label ID="Label23" runat="server" Font-Bold="True" Text="Subtotal:"></asp:Label>
            </td>
            <td class="auto-style3">Rs.<asp:Label ID="lbsubtotal" runat="server" Font-Bold="True" Text="Label"></asp:Label>
            </td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td colspan="2">
                <table class="auto-style10">
                    <tr>
                        <td>
                <asp:Button ID="Button1" runat="server" BackColor="#CCFFFF" Font-Bold="True" ForeColor="#0066CC" OnClick="Button1_Click" Text="Proceed to Pay" Height="32px" Width="202px" />
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            
                            <asp:Button ID="Button2" runat="server" BackColor="#CCFFFF" Font-Bold="True" ForeColor="#3333CC" OnClick="Button2_Click" Text="Cancel Order" Width="161px" />
                            
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <br />
                &nbsp;
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </body>
  
</asp:Content>
