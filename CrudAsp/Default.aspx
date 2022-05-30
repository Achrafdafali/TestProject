<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CrudAsp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <div style="font-size: x-large;text-align: center;">Student info manage form</div>
        <br />

        <table class="nav-justified">
            <tr>
                <td style="width: 168px; height: 24px"></td>
                <td style="height: 24px; width: 429px">Student Name</td>
                <td style="height: 24px">
                    <asp:TextBox ID="txtName" runat="server" Font-Size="Medium" Width="164px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 168px">&nbsp;</td>
                <td style="width: 429px">Adress</td>
                <td>
                    <asp:DropDownList ID="ddlAdress" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 168px; height: 20px"></td>
                <td style="height: 20px; width: 429px">Age</td>
                <td style="height: 20px">
                    <asp:TextBox ID="txtAge" runat="server" Font-Size="Medium" Width="164px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 168px">&nbsp;</td>
                <td style="width: 429px">Contact</td>
                <td>
                    <asp:TextBox ID="txtContact" runat="server" Font-Size="Medium" Width="164px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 168px">Student id :</td>
                <td style="width: 429px">
                    <asp:TextBox ID="txtStId" runat="server" Width="168px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btmSearch" runat="server" BackColor="#0000CC" Font-Size="Medium" ForeColor="White" OnClick="btmSearch_Click" Text="Search" Width="119px" />
                </td>
                <td>
                    <asp:Button ID="btnInsert" runat="server" BackColor="#933FFF" Font-Size="Medium" ForeColor="White" OnClick="btnInsert_Click" Text="Insert" Width="126px" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnUpdate" runat="server" BackColor="#933FFF" Font-Size="Medium" ForeColor="White" OnClick="btnUpdate_Click" Text="Update" Width="126px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnDelete" runat="server" BackColor="#933FFF" Font-Size="Medium" ForeColor="White" OnClick="btnDelete_Click" Text="Delete" Width="126px" />
                    <br />
                    <br />
                    <asp:GridView ID="GridStudent" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="487px">
                        <AlternatingRowStyle BackColor="White" />
                        <FooterStyle BackColor="#CCCC99" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#F7F7DE" />
                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                        <SortedAscendingHeaderStyle BackColor="#848384" />
                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                        <SortedDescendingHeaderStyle BackColor="#575357" />
                    </asp:GridView>
                </td>
            </tr>
        </table>

    </div>
</asp:Content>
