<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddPatient.aspx.cs" Inherits="Test.M3.AddPatient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label Text="Patient Id" ID="LblPatientId" runat="server" />
                    </td>
                    <td>
                        <asp:TextBox ID="TxtPatientId" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="Patient Name" ID="LblPatientName" runat="server" />
                    </td>
                    <td>
                        <asp:TextBox ID="TxtPatientName" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="Gender" ID="lblGender" runat="server" />
                    </td>
                    <td>
                        <asp:DropDownList ID="DdlGender" runat="server">
                            <asp:ListItem Text="Male" Value="M"/>
                            <asp:ListItem Text="feale" Value="F"/>
                            <asp:ListItem Text="Others" Value="O"/>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="Age" ID="LblAge" runat="server" />
                    </td>
                    <td>
                        <asp:TextBox ID="TxtAge" runat="server" /><br/>
                        <asp:RangeValidator ErrorMessage="Age should be greater than 0 and less than 120" MaximumValue="119" MinimumValue="1" ForeColor="Red" SetFocusOnError="True" Type=" Integer" ControlToValidate="TxtAge" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="Contact No" ID="LblContactNo" runat="server" />
                    </td>
                    <td>
                        <asp:TextBox ID="TxtContactNo" runat="server" /><br/>
                        <asp:RegularExpressionValidator ErrorMessage="Contact Number should be 10 digits" ForeColor="Red" ValidationExpression="[0-9]" ControlToValidate="TxtContactNo" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="Doctor Name" ID="LblDoctorName" runat="server" />
                    </td>
                    <td>
                        <asp:TextBox ID="TxtDoctorName" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button Text="ADD" ID="BtnAdd1" runat="server" OnClick="BtnAdd1_Click" style="height: 26px" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
