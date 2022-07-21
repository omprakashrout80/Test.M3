<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchPatient.aspx.cs" Inherits="Test.M3.SearchPatient" %>

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
                        <asp:Label Text="Doctor Name" ID="LblDoctorName" runat="server" /></td>
                    <td>
                        <asp:TextBox ID="TxtDoctorName" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="PatientName" HeaderText="PatientName" SortExpression="PatientName" />
                                <asp:BoundField DataField="DoctorName" HeaderText="DoctorName" SortExpression="DoctorName" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:patientConnectionString %>" SelectCommand="SELECT [PatientName], [DoctorName] FROM [PatientInformation]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button Text="Search" ID="BtnSearch" runat="server" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
