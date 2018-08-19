<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" enableEventValidation="false" validateRequest="false" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="S03_01Presentacion._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-4">
            <h2>Formulario</h2>
            <p>
                <form id="form1" >
                    <asp:Label Text="Nombre Empleado:" runat="server"></asp:Label><br />
                    <asp:TextBox ID="Nombre_Empleado" Text="" runat="server"></asp:TextBox><br />   

                    <asp:Label Text="Identificacion:" runat="server"></asp:Label><br />
                    <asp:TextBox ID="identificacion" Text="" runat="server"></asp:TextBox><br /> 

                    <asp:Label Text="Posicion:" runat="server"></asp:Label><br />
                    <asp:DropDownList ID="posicion" runat="server">
                    <asp:ListItem Value="Seleccione" Selected="True">Seleccione</asp:ListItem>
                     <asp:ListItem Value="Adminstracion">Adminstracion</asp:ListItem>
                     <asp:ListItem Value="Finanzas">Finanzas</asp:ListItem>
                     <asp:ListItem Value="Mercadeo">Mercadeo</asp:ListItem>
                     <asp:ListItem Value="Soporte" >Soporte</asp:ListItem>
                     <asp:ListItem Value="Mantenimiento">Mantenimiento</asp:ListItem>
                    <asp:ListItem Value="Seguridad">Seguridad</asp:ListItem>
                    </asp:DropDownList><br />

                    <asp:Label Text="Area:" runat="server"></asp:Label><br />
                    <asp:DropDownList ID="area" runat="server">
                    <asp:ListItem Value="Seleccione" Selected="True">Seleccione</asp:ListItem>
                     <asp:ListItem Value="Adminstracion">Adminstracion</asp:ListItem>
                     <asp:ListItem Value="Finanzas">Finanzas</asp:ListItem>
                     <asp:ListItem Value="Mercadeo">Mercadeo</asp:ListItem>
                     <asp:ListItem Value="Soporte" >Soporte</asp:ListItem>
                     <asp:ListItem Value="Mantenimiento">Mantenimiento</asp:ListItem>
                    <asp:ListItem Value="Seguridad">Seguridad</asp:ListItem>
                    </asp:DropDownList>

                </form>
            </p>
            <p>
                <asp:Button ID="Entrada" runat="server" Text="Entrada" OnClick="Entrada_Click" />
                <asp:Button ID="Salida" runat="server" Text="Salida" OnClick="Salida_Click" />
            </p>
        </div>
        <div class="col-md-4">
            <h2>Insertar DataGrid View</h2>
            <table>
                <tr>
                    <td>
                        <asp:GridView ID="gvRegistros" runat="server" AutoGenerateColumns="false" 
                        AllowPaging="true" Width="100%" PageSize="5" 
                        OnPageIndexChanging="gvRegistros_PageIndexChanging" 
                        OnSelectedIndexChanging="gvRegistros_SelectedIndexChanging" >
                        <Columns>
                            <asp:CommandField ShowSelectButton="true" SelectText="Seleccione" />
                            <asp:BoundField DataField="codEntrada" HeaderText="Nombre" />
                            <asp:BoundField DataField="nombreEmpleado" HeaderText="Nombre" />
                            <asp:BoundField DataField="identificacion" HeaderText="Identificacion" />
                            <asp:BoundField DataField="posicion" HeaderText="Posicion" />
                            <asp:BoundField DataField="area" HeaderText="Area" />
                            <asp:BoundField DataField="fechaEntrada" HeaderText="FechaEntrada" />
                            <asp:BoundField DataField="horaEntrada" HeaderText="HoraEntrada" />
                            <asp:BoundField DataField="fechaSalida" HeaderText="FechaSalida" />
                            <asp:BoundField DataField="horaSalida" HeaderText="HoraSalida" />
                        </Columns>
                    <AlternatingRowStyle BackColor="LightBlue" />
                    <RowStyle BackColor ="LightGray" />
                    <PagerStyle HorizontalAlign="Center" BackColor="WindowFrame" />
                    <HeaderStyle HorizontalAlign="Center" BackColor="WindowFrame" />
                    </asp:GridView>
                    </td>
                </tr>
            </table>
        </div>
    </div> 
</asp:Content>
