<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Summary.aspx.cs" MasterPageFile="~/Main.master" Inherits="Final.Summary" %>
<%@ Import Namespace="Final" %>
<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" 
runat="server">
 <div>

 <h2>Список студентов: </h2>
 <table>
 <thead>
 <tr>
 <th>Имя</th>
 <th>Email</th>
 <th>Телефон</th>
     <th>Балл по русскому языку</th>
     <th>Балл по математике</th>
     <th>Балл по химии</th>
 </tr>
 </thead>

 <tbody>
 <%= GetNoShowHtml()%>
 </tbody>
 </table>
 </div>
 </asp:Content>