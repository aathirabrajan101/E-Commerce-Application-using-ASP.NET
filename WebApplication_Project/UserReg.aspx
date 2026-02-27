<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserReg.aspx.cs" Inherits="WebApplication_Project.UserReg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Registration</title>

    <style>
        body {
            margin: 0;
            padding: 0;
            background-image: url("https://images.pexels.com/photos/368756/pexels-photo-368756.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1");
            background-size: cover;       
            background-repeat: no-repeat;
            background-position: center;
            height: 100vh;
        }
        .auto-style1 {
            color: white;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style5 {
            height: 30px;
        }
        .auto-style7 {
            height: 44px;
        }
        .auto-style13 {
            height: 23px;
        }
        .auto-style14 {
            width: 440px;
        }
        .auto-style15 {
            height: 23px;
            width: 440px;
        }
        .auto-style16 {
            height: 44px;
            width: 440px;
        }
        .auto-style17 {
            height: 30px;
            width: 440px;
        }
        .auto-style18 {
            width: 185px;
        }
        .auto-style19 {
            height: 23px;
            width: 185px;
        }
        .auto-style20 {
            height: 44px;
            width: 185px;
        }
        .auto-style21 {
            height: 30px;
            width: 185px;
        }
        .auto-style22 {
            width: 246px;
        }
        .auto-style23 {
            width: 246px;
            height: 23px;
        }
        .auto-style24 {
            width: 246px;
            height: 44px;
        }
        .auto-style25 {
            width: 246px;
            height: 30px;
        }
        .auto-style26 {
            width: 435px;
        }
        .auto-style27 {
            height: 23px;
            width: 435px;
        }
        .auto-style28 {
            height: 44px;
            width: 435px;
        }
        .auto-style29 {
            height: 30px;
            width: 435px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
          <h1 style="text-align:center; padding-top:50px;" class="auto-style1">
              User Registration</h1>
        <div>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style27"></td>
                    <td class="auto-style23"></td>
                    <td class="auto-style15"></td>
                    <td class="auto-style19"></td>
                    <td class="auto-style13"></td>
                </tr>
                <tr>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style22">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#FFFF99" Text="Name"></asp:Label>
                    </td>
                    <td class="auto-style14">
                        <asp:TextBox ID="tbname" runat="server" Width="219px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbname" ErrorMessage="**Required" ForeColor="#FFFF66" Font-Bold="True"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style18">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style22">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#FFFF99" Text="Age"></asp:Label>
                    </td>
                    <td class="auto-style14">
                        <asp:TextBox ID="tbage" runat="server" Width="219px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbage" ErrorMessage="**Required" ForeColor="#FFFF66" Font-Bold="True"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style18">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style28"></td>
                    <td class="auto-style24">
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#FFFF99" Text="Address"></asp:Label>
                    </td>
                    <td class="auto-style16">
                        <asp:TextBox ID="tbaddr" runat="server" Width="219px" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbaddr" ErrorMessage="**Required" ForeColor="#FFFF66" Font-Bold="True"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style20"></td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style29"></td>
                    <td class="auto-style25">
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#FFFF99" Text="Phone No"></asp:Label>
                    </td>
                    <td class="auto-style17">
                        <asp:TextBox ID="tbphone" runat="server" Width="219px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="tbphone" ErrorMessage="**Enter exact 10 digits" Font-Bold="True" ForeColor="#FFFF66" ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style21"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style22">
                        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#FFFF99" Text="Email ID"></asp:Label>
                    </td>
                    <td class="auto-style14">
                        <asp:TextBox ID="tbmail" runat="server" Width="219px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbmail" ErrorMessage="**Invalid mailID" ForeColor="#FFFF66" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Bold="True"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style18">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style22">
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#FFFF99" Text="Pincode"></asp:Label>
                    </td>
                    <td class="auto-style14">
                        <asp:TextBox ID="tbpin" runat="server" Width="219px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tbpin" ErrorMessage="**Required" ForeColor="#FFFF66" Font-Bold="True"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style18">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style22">
                        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#FFFF99" Text="Username"></asp:Label>
                    </td>
                    <td class="auto-style14">
                        <asp:TextBox ID="tbuser" runat="server" Width="219px" AutoPostBack="True" OnTextChanged="tbuser_TextChanged"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="tbuser" ErrorMessage="**Required" ForeColor="#FFFF66" Font-Bold="True"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style18">
                        <asp:Label ID="lbltxtchange" runat="server" ForeColor="#FFFF66" Text="Label" Visible="False" Font-Bold="True"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style22">
                        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#FFFF99" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style14">
                        <asp:TextBox ID="tbpass" runat="server" Width="219px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="tbpass" ErrorMessage="**Required" ForeColor="#FFFF66" Font-Bold="True"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style18">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style14">
                        <asp:Button ID="Button1" runat="server" Font-Bold="True" ForeColor="#CC6600" Text="Register" OnClick="Button1_Click" />
                    </td>
                    <td class="auto-style18">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style14">
                        <asp:Label ID="lbldisplay" runat="server" ForeColor="#FFFF66" Text="Label" Visible="False" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style18">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style14">
                        <asp:Button ID="btlog" runat="server" Font-Bold="True" OnClick="Button2_Click" Text="Click Here for Login" Visible="False" />
                    </td>
                    <td class="auto-style18">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style27"></td>
                    <td class="auto-style23"></td>
                    <td class="auto-style15"></td>
                    <td class="auto-style19"></td>
                    <td class="auto-style13"></td>
                </tr>
                <tr>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
