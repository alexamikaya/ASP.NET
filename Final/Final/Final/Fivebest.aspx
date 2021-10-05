<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Fivebest.aspx.cs" Inherits="Final.Fivebest" %>
<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
       <div>
    <h1>Пять лучших студентов</h1>
    
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="StudentName" HeaderText="StudentName" SortExpression="StudentName" />
                    <asp:BoundField DataField="StudentRussia" HeaderText="StudentRussia" SortExpression="StudentRussia" />
                    <asp:BoundField DataField="StudentMath" HeaderText="StudentMath" SortExpression="StudentMath" />
                    <asp:BoundField DataField="StudentChem" HeaderText="StudentChem" SortExpression="StudentChem" />
                    <asp:BoundField DataField="SumMarks" HeaderText="SumMarks" ReadOnly="True" SortExpression="SumMarks" />
                </Columns>
            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Studentsmark %>" SelectCommand="SELECT TOP(5) [StudentName], [StudentRussia], [StudentMath], [StudentChem], (convert (int, StudentChem) + convert (int, StudentRussia) + convert (int, StudentMath)) as SumMarks FROM GuestResponses ORDER BY SumMarks DESC"></asp:SqlDataSource>
    </div>
</asp:Content>

