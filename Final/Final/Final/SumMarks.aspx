<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="SumMarks.aspx.cs" Inherits="Final.SumMarks" %>
<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
   <div>
    <h1>Сумма баллов всех студентов</h1>
    
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="StudentName" HeaderText="StudentName" SortExpression="StudentName" />
                    <asp:BoundField DataField="StudentRussia" HeaderText="StudentRussia" SortExpression="StudentRussia" />
                    <asp:BoundField DataField="StudentMath" HeaderText="StudentMath" SortExpression="StudentMath" />
                    <asp:BoundField DataField="StudentChem" HeaderText="StudentChem" SortExpression="StudentChem" />
                    <asp:BoundField DataField="SUMMark" HeaderText="SUMMark" ReadOnly="True" SortExpression="SUMMark" />
                </Columns>
            </asp:GridView>
        </div>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Student.Studentsmark.mdfConnectionString %>" SelectCommand="SELECT [StudentName], [StudentRussia], [StudentMath], [StudentChem], (convert (int, StudentChem) + convert (int, StudentRussia) + convert (int, StudentMath)) as SUMMark FROM GuestResponses "></asp:SqlDataSource>
   
</div>
    </asp:Content>
