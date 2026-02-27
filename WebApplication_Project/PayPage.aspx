<%@ Page Title="" Language="C#" MasterPageFile="~/carousel.Master" AutoEventWireup="true" CodeBehind="PayPage.aspx.cs" Inherits="WebApplication_Project.PayPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 72px;
    }
    .auto-style2 {
        width: 177px;
    }
    .auto-style3 {
        width: 484px;
    }
    .auto-style4 {
        width: 7px;
    }
    .auto-style5 {
        width: 39px;
    }
    .auto-style6 {
        width: 111%;
        height: 142px;
    }
    .auto-style7 {
        width: 153px;
    }
    .auto-style8 {
        height: 30px;
    }
    .auto-style9 {
        width: 55px;
    }
    .auto-style10 {
        height: 30px;
        width: 55px;
    }
    .auto-style12 {
        height: 30px;
        width: 198px;
    }
    .auto-style13 {
        width: 114%
    }
    .auto-style14 {
        width: 198px;
    }
    .auto-style15 {
        width: 39px;
        height: 30px;
    }
    .auto-style16 {
        width: 7px;
        height: 30px;
    }
    .auto-style17 {
        width: 484px;
        height: 30px;
    }
    .auto-style18 {
        width: 153px;
        height: 30px;
    }
    .auto-style19 {
        width: 148px;
    }
    .auto-style20 {
        width: 149px;
    }
    .auto-style21 {
        width: 101%;
        height: 69px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">&nbsp;
            <asp:Label ID="Label1" runat="server" BorderStyle="Double" Font-Bold="True" Font-Size="X-Large" ForeColor="#006666" Height="31px" Text="Payment Details" Width="238px"></asp:Label>
            &nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">
            <asp:Button ID="Button1" runat="server" BackColor="#FFFF99" Font-Bold="True" ForeColor="#660033" OnClick="Button1_Click" Text="Enter Accont Details" />
        </td>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">
            <asp:Panel ID="Panel1" runat="server" Height="147px" Visible="False" Width="606px">
                <table class="auto-style6">
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style2">Account Holder Name:</td>
                        <td>
                            <asp:TextBox ID="tbname" runat="server"></asp:TextBox>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbname" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style2">Account Number:</td>
                        <td>
                            <asp:TextBox ID="tbaccnum" runat="server" AutoPostBack="True" OnTextChanged="tbaccnum_TextChanged" TextMode="Number"></asp:TextBox>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbaccnum" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            &nbsp;
                            <asp:Label ID="Label3" runat="server" Text="Account Already exists" Visible="False"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style2">Account Balance:</td>
                        <td>
                            <asp:TextBox ID="tbaccbal" runat="server"></asp:TextBox>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbaccbal" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style2">&nbsp;</td>
                        <td>
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Add Account" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style2">&nbsp;</td>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Account Added Successfully" Visible="False"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">
            <asp:Button ID="Button3" runat="server" BackColor="#FFFF99" Font-Bold="True" ForeColor="#660033" OnClick="Button3_Click" Text="Update Balance Amount" />
        </td>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style15"></td>
        <td class="auto-style16"></td>
        <td class="auto-style17">
            <asp:Panel ID="Panel2" runat="server" Visible="False">
                <table class="auto-style13">
                    <tr>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="auto-style14">Account Holder Name:</td>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style10"></td>
                        <td class="auto-style12">Account Number:</td>
                        <td class="auto-style8">
                            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="auto-style8"></td>
                    </tr>
                    <tr>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="auto-style14">Update Balance:</td>
                        <td>
                            <asp:TextBox ID="tbnewaccbal" runat="server" Height="22px" TextMode="Number" Width="154px"></asp:TextBox>
                            &nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbnewaccbal" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="auto-style14">&nbsp;</td>
                        <td>
                            <asp:Button ID="Button4" runat="server" Height="25px" OnClick="Button4_Click" Text="Update" Width="66px" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="auto-style14">&nbsp;</td>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text="Balance Updated Successfully" Visible="False"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
        <td class="auto-style18"></td>
        <td class="auto-style8"></td>
        <td class="auto-style8"></td>
    </tr>
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">
            <table class="w-100">
                <tr>
                    <td class="auto-style19">
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Amount to be Paid:"></asp:Label>
                    </td>
                    <td>Rs.<asp:Label ID="Label9" runat="server" Font-Bold="True" Text="Label"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19">
                        <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Enter Ac/No:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="25px" TextMode="Number" Width="252px"></asp:TextBox>
&nbsp;<asp:Button ID="Button5" runat="server" BackColor="#9999FF" Font-Bold="True" Height="35px" OnClick="Button5_Click" Text="Pay" Width="57px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </td>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">
            <table class="auto-style21">
                <tr>
                    <td class="auto-style20">&nbsp;</td>
                    <td>
                        <asp:Label ID="Label11" runat="server" Text="Label" Visible="False"></asp:Label>
&nbsp;<br />
                        <asp:Button ID="Button6" runat="server" Font-Bold="True" ForeColor="#990033" Height="28px" Text="Please Give Us a Feedback" Visible="False" Width="209px" OnClick="Button6_Click" />
                    </td>
                </tr>
            </table>
        </td>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
