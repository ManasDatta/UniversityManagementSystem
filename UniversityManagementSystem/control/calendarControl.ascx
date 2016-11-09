<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="calendarControl.ascx.cs" Inherits="UniversityManagementSystem.control.calendarControl" %>
<asp:TextBox ID="TextBoxDate" runat="server" BorderWidth="1px" Height="25px" Width="250px" ReadOnly="True" TextMode="SingleLine"></asp:TextBox>
<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/calendar.png" Height="24px" Width="24px" OnClick="ImageButton1_Click" CausesValidation="False" />
<asp:Calendar ID="Calendar1" runat="server" Height="190px" Width="350px" OnDayRender="Calendar1_DayRender" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" NextPrevFormat="FullMonth" Visible="False" OnSelectionChanged="Calendar1_SelectionChanged1">
    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
    <OtherMonthDayStyle ForeColor="#999999" />
    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
    <TodayDayStyle BackColor="#CCCCCC" />
</asp:Calendar>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Required Field" ForeColor="Red" ControlToValidate="TextBoxDate" Display="Dynamic"></asp:RequiredFieldValidator>