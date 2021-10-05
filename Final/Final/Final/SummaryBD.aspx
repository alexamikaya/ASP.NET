<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="SummaryBD.aspx.cs" Inherits="Final.SummaryBD" %>
<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
       <div>
    <div>
            <h2>Список всех студентов:</h2>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource1">
            <Columns>
                <asp:BoundField DataField="Rdata" HeaderText="Rdata" ReadOnly="True" SortExpression="Rdata" />
                <asp:BoundField DataField="StudentMath" HeaderText="StudentMath" ReadOnly="True" SortExpression="StudentMath" />
                <asp:BoundField DataField="StudentChem" HeaderText="StudentChem" ReadOnly="True" SortExpression="StudentChem" />
                <asp:BoundField DataField="StudentRussia" HeaderText="StudentRussia" ReadOnly="True" SortExpression="StudentRussia" />
                <asp:BoundField DataField="StudentPhone" HeaderText="StudentPhone" ReadOnly="True" SortExpression="StudentPhone" />
                <asp:BoundField DataField="StudentEmail" HeaderText="StudentEmail" ReadOnly="True" SortExpression="StudentEmail" />
                <asp:BoundField DataField="StudentName" HeaderText="StudentName" ReadOnly="True" SortExpression="StudentName" />
            </Columns>
        </asp:GridView>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="Final.SampleContext" EntityTypeName="" Select="new (Rdata, Marks, StudentMath, StudentChem, StudentRussia, StudentPhone, StudentEmail, StudentName)" TableName="GuestResponses">
        </asp:LinqDataSource>
   </div>
    </asp:Content>
