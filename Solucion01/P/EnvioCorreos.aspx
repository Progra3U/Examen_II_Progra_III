<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="EnvioCorreos.aspx.cs" Inherits="P.FrmEnvioCorreos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager id="scripmanager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <table style="width:100%;">
                <tr>
                    <td></td>
                    <td>
                        <asp:Label runat="server" Text="Digite correo electrónico:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtCorreo" runat="server" MaxLength="50"></asp:TextBox>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>
                        <asp:Button ID="btnAgregar" runat="server" Text="Agregar" OnClick="btnAgregar_Click" />
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2">
                        <asp:GridView ID="gvCorreos" runat="server" Width="100%" AutoGenerateColumns="false" >
                            <Columns>
                                <asp:CommandField SelectText="Seleccione" ShowSelectButton="true" ItemStyle-Width="10%" />
                                <asp:BoundField DataField="correo" HeaderText ="Correo electrónico" ItemStyle-Width="90%" />
                            </Columns>
                        </asp:GridView>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td style="text-align:center; width:100%;">
                        <asp:UpdateProgress runat="server">
                            <ProgressTemplate>
                                <asp:Image runat="server" ImageUrl="~/cargando.gif" Width="150px" Height="100px" />        
                            </ProgressTemplate>
                        </asp:UpdateProgress>                        
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td colspan="4" style="text-align:center;">
                        <asp:Button ID="btnEnviar" runat="server" Text="Enviar" OnClick="btnEnviar_Click"/>
                        <br />
                        <br />
                        <asp:Label ID="lblaviso" runat="server" Text="Envio correos satisfactorio" Visible ="false"></asp:Label>
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
