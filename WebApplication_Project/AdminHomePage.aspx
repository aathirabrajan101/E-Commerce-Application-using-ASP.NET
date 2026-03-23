<%@ Page Title="" Language="C#" MasterPageFile="~/carousel.Master" AutoEventWireup="true" CodeBehind="AdminHomePage.aspx.cs" Inherits="WebApplication_Project.AdminHomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
         
    <style type="text/css">
        .auto-style2 {
            width: 97px;
        }
        .auto-style3 {
            height: 30px;
            width: 97px;
        }
        .auto-style4 {
            width: 250px;
        }
        .auto-style10 {
            width: 246px;
        }
        .auto-style13 {
            width: 234px;
        }
        .auto-style15 {
            width: 509px;
        }
        .auto-style16 {
            width: 97px;
            height: 72px;
        }
        .auto-style17 {
            width: 250px;
            height: 72px;
        }
        .auto-style18 {
            width: 246px;
            height: 72px;
        }
        .auto-style19 {
            width: 234px;
            height: 72px;
        }
        .auto-style20 {
            width: 509px;
            height: 72px;
        }
        .auto-style21 {
            margin-left: 45;
        }
        .auto-style22 {
            width: 168px;
        }
        .auto-style23 {
            width: 97px;
            height: 106px;
        }
        .auto-style24 {
            height: 106px;
        }
        .auto-style25 {
            width: 246px;
            height: 106px;
        }
        .auto-style26 {
            width: 234px;
            height: 106px;
        }
        .auto-style27 {
            width: 509px;
            height: 106px;
        }
    </style>
         
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100" style="background-color:aliceblue" >
        <h2 style="color:seagreen">&nbsp;</h2>
        <tr>
            <td class="auto-style23"></td>
            <td class="auto-style24" colspan="2">
                <table class="w-100">
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#996633" Text="Welcome to Admin Home Page!" BorderColor="#FF9966" BorderStyle="None" BorderWidth="4px" Height="35px" Width="402px"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <br />
            </td>
            <td class="auto-style25"></td>
            <td class="auto-style26"></td>
            <td class="auto-style27">
                <table class="w-100">
                    <tr>
                        <td class="auto-style22">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style22">&nbsp;</td>
                        <td>
                            <asp:Button ID="Button3" runat="server" BackColor="#CCFFFF" BorderColor="#CC0000" BorderWidth="2px" CssClass="auto-style21" OnClick="Button3_Click" Text="Logout " />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style22">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style22">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Add Category" Font-Size="Large" ForeColor="#339966"></asp:Label>
            &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="17px" ImageUrl="~/PHOTOS/pexels-digitalbuggu-368756.jpg" PostBackUrl="~/AddCategory.aspx" Width="19px" />
            </td>
            <td class="auto-style10">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Edit Category" Font-Size="Large" ForeColor="#339966"></asp:Label>
            &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" Height="16px" ImageUrl="~/PHOTOS/pexels-digitalbuggu-368756.jpg" PostBackUrl="~/EditCategory.aspx" Width="19px" />
            </td>
            <td class="auto-style13">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Add Products" Font-Size="Large" ForeColor="#339966"></asp:Label>
            &nbsp;<asp:ImageButton ID="ImageButton3" runat="server" Height="17px" ImageUrl="~/PHOTOS/pexels-digitalbuggu-368756.jpg" PostBackUrl="~/AddProduct.aspx" Width="19px" />
            </td>
            <td class="auto-style15">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Edit Products" Font-Size="Large" ForeColor="#339966"></asp:Label>
            &nbsp;<asp:ImageButton ID="ImageButton4" runat="server" Height="18px" ImageUrl="~/PHOTOS/pexels-digitalbuggu-368756.jpg" PostBackUrl="~/EditProduct.aspx" Width="20px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16"></td>
            <td class="auto-style17">
                <asp:Button ID="Button1" runat="server" BackColor="#FFCCCC" Font-Bold="True" ForeColor="Maroon" Height="33px" OnClick="Button1_Click" Text="View User Feedbacks" Width="198px" />
            </td>
            <td class="auto-style18">
                <asp:Button ID="Button2" runat="server" BackColor="#FFCCCC" Font-Bold="True" ForeColor="#660033" Height="30px" OnClick="Button2_Click" Text="Manage Users" Width="178px" />
            </td>
            <td class="auto-style19"></td>
            <td class="auto-style20"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td colspan="2" rowspan="8">&nbsp;
                <asp:Image ID="Image1" runat="server" Height="216px" ImageUrl="~/PHOTOS/pexels-mateusz-pielech-1032276948-29252369.jpg" Width="396px" />
            </td>
            <td colspan="2" rowspan="8">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image2" runat="server" Height="216px" ImageUrl="~/PHOTOS/pexels-andreaedavis-2829030.jpg" Width="396px" />
&nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
