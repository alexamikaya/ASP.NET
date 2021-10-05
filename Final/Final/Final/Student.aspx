<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student.aspx.cs" MasterPageFile="~/Main.master" Inherits="Final.Student" %>
<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
         <div>
 <label>Ваше имя:<asp:TextBox ID="name"
runat="server"></asp:TextBox>
             </label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="Заполните поле имени">Заполните поле имени</asp:RequiredFieldValidator>
 </div>
 <div>
 <label>Ваш email:</label><asp:TextBox ID="email"
runat="server"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email" ErrorMessage="Заполните поле email">Заполните поле email</asp:RequiredFieldValidator>
     <asp:RegularExpressionValidator runat="server" ControlToValidate="email"
ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
ErrorMessage="E-mail is not in a valid format" Display="Dynamic"
ForeColor="Red">Адрес введен неверно!!!</asp:RegularExpressionValidator></div>
 <div>
 <label>Ваш телефон:</label><asp:TextBox ID="phone"
runat="server"></asp:TextBox>
 <label>
     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="phone" ValidationExpression="[0-9]{10}" ErrorMessage="Телефон введен неверно"></asp:RegularExpressionValidator>
     </label>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="phone" ErrorMessage="Заполните поле телефон">Заполните поле телефон</asp:RequiredFieldValidator>
 </div>
 <div>
 <label>Балл по русскому языку</label>
 <asp:TextBox ID="russia" runat="server" />
     <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="russia" ValidationExpression="[0-9]{1}" ErrorMessage="Балл введен неверно, только 1 цифра"></asp:RegularExpressionValidator>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="russia" ErrorMessage="Заполните поле">Заполните поле</asp:RequiredFieldValidator>
 </div>
           <div>
           <label>Балл по математике</label>
 <asp:TextBox ID="math" runat="server" />
               <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="math" ErrorMessage="Заполните поле">Заполните поле</asp:RequiredFieldValidator>
               <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="math" ValidationExpression="[0-9]{1}" ErrorMessage="Балл введен неверно, только 1 цифра"></asp:RegularExpressionValidator>
 </div>
            <div>
           <label>Балл по химии</label>
 <asp:TextBox ID="chem" runat="server" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="chem" ErrorMessage="Балл введен неверно, только 1 цифра"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="chem" ValidationExpression="[0-9]{1}" ErrorMessage="Заполните поле">Заполните поле</asp:RequiredFieldValidator>
 </div>
        
 <div>
 <button type="submit">Отправить данные</button>
 </div>
 </div>
</asp:Content>

    