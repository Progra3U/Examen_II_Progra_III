<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="S01_01Presentacion.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:updatepanel runat="server">
       <ContentTemplate>
           <table style="width:100%; height:100%;">
               <tr>
                   <td colspan="4"><b>Login:</b></td>
               </tr>
               <tr>
                   <td><asp:Label Text="Usuario:" runat="server"></asp:Label> </td>
                   <td>
                       <asp:TextBox ID="Usuario" runat="server"></asp:TextBox>
                   </td>
                   <td></td>
                   <td></td>
               </tr>
               <tr>
                   <td>
                       <asp:Label Text="Contraseña:" runat="server"></asp:Label>
                   </td>
                   <td>
                       <asp:TextBox ID="pass" runat="server"></asp:TextBox>
                   </td>
                   <td></td>
                   <td></td>
               </tr>
               <tr>
                   <td>
                       
                   </td>
                   <td>
                       <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnEliminar_Click" />
                   </td>
                   <td>
                       
                   </td>
                   <td></td>
               </tr>
           </table>
       </ContentTemplate>
    </asp:updatepanel>
</asp:Content>
