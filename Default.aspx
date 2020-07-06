<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" MasterPageFile="" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<style type=\"text/css\"> body { "height: 150px; Width: 100px" } </style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Comprar Boleto</title>
    <style type="text/css">
        .auto-style1 {
            width: 1025px;
            height: 361px;
            margin-right: 24px;
        }
        .auto-style9 {
            margin-left: 0px;
        }
        .auto-style19 {
            height: 32px;
        }
        .auto-style32 {
            width: 192px;
            height: 33px;
        }
        .auto-style34 {
            width: 192px;
            height: 28px;
        }
        .auto-style35 {
            width: 192px;
            height: 27px;
        }
        .auto-style36 {
            width: 192px;
            height: 23px;
        }
        .auto-style39 {
            width: 192px;
            height: 18px;
        }
        .auto-style42 {
            width: 192px;
            height: 45px;
        }
        .auto-style63 {
            overflow: auto;
            width: 271px;
        }
        .auto-style64 {
            overflow: auto;
            width: 287px;
        }
        .auto-style65 {
            width: 229px;
            height: 45px;
        }
        .auto-style66 {
            width: 229px;
            height: 18px;
        }
        .auto-style67 {
            width: 229px;
            height: 28px;
        }
        .auto-style68 {
            width: 229px;
            height: 27px;
        }
        .auto-style69 {
            width: 229px;
            height: 33px;
        }
        .auto-style70 {
            width: 229px;
            height: 23px;
        }
        .auto-style72 {
            overflow: auto;
        }
        .auto-style73 {
            width: 192px;
            height: 38px;
        }
        .auto-style74 {
            width: 229px;
            height: 38px;
        }
        .auto-style77 {
            width: 192px;
            height: 42px;
        }
        .auto-style78 {
            width: 229px;
            height: 42px;
        }
        .auto-style79 {
            width: 1014px;
        }
        .auto-style80 {
            height: 23px;
        }
    </style>
</head>
<body>
    <center><form id="form1" runat="server">
        <table class="auto-style1" style="border-width: -2px; border-spacing: 0px;">
            <tr>
                <td class="auto-style72" style="text-align: center; color: #0066FF; font-size: 21px; font-style: normal; background-color: #4FBAFB;  " colspan="4"><img src="Imagenes/Entrete.png" height="182" alt="" class="auto-style79"/></td>
            </tr>
            <tr>
                <td class="auto-style72" style="text-align: center; color: #0066FF; font-size: 21px; font-style: normal; background-color: #66FFCC; table-layout: auto; border-spacing: 0px;" colspan="4">Comprar Boleto</td>
            </tr>
            <tr>
                <td class="auto-style63" style="text-align: center; color: #0066FF; font-size: 21px; font-style: normal; background-color: #66FFCC; background-image: none; table-layout: auto; border-spacing: 0px;" rowspan="9">
                    <asp:ImageButton ID="ImageButton1" runat="server" BorderColor="#4FBAFB" BorderWidth="5px" ForeColor="#66CCFF" Height="247px" ImageAlign="Middle" ImageUrl="~/Imagenes/antman.jpg" Width="200px" />
                </td>
                <td class="auto-style42" style="text-align: right; background-color: #66FFCC; color: #0066FF; font-size: 18px;">IdSala:</td>
                <td class="auto-style65" style="background-color: #66FFCC">
                    <asp:DropDownList ID="cmbsala" runat="server" Height="34px" Width="139px" DataSourceID="SqlDataSource4" DataTextField="IdSala" DataValueField="IdSala">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DBCinecatrachoConnectionString %>" SelectCommand="SELECT [IdSala] FROM [t_Sala]"></asp:SqlDataSource>
                </td>
                <td class="auto-style64" style="background-color: #66FFCC;  " rowspan="9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton2" runat="server" BorderColor="#4FBAFB" BorderWidth="5px" Height="243px" ImageUrl="~/Imagenes/xm.jpg" Width="180px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style42" style="text-align: right; background-color: #66FFCC; color: #0066FF; font-size: 18px;">Pelicula:</td>
                <td class="auto-style65" style="background-color: #66FFCC">
                    <asp:DropDownList ID="cmbpelicula" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nombre" DataValueField="Nombre" Height="30px" Width="139px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBCinecatrachoConnectionString %>" SelectCommand="SELECT [Nombre] FROM [t_Pelicula]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style39" style="text-align: right; background-color: #66FFCC; color: #0066FF; font-size: 18px;">Nombre:</td>
                <td class="auto-style66" style="background-color: #66FFCC"><asp:TextBox ID="txtnombre"  runat="server" Height="30px" Width="131px" BorderColor="#3399FF" AutoCompleteType="FirstName"></asp:TextBox>
                     </td>
                
            </tr>
            <tr>
                <td class="auto-style34" style="text-align: right; background-color: #66FFCC; color: #0066FF; font-size: 18px;" draggable="false" translate="no">Apellido:</td>
                <td class="auto-style67" style="background-color: #66FFCC">
                    <asp:TextBox ID="txtapellido" runat="server" Height="30px" Width="130px" BorderColor="#3399FF" AutoCompleteType="LastName"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style34" style="text-align: right; background-color: #66FFCC; color: #0066FF; font-size: 18px;">Fecha y Hora:</td>
                <td class="auto-style67" style="background-color: #66FFCC;">
                    <asp:DropDownList ID="txtfecha" runat="server" Height="30px" Width="139px" DataSourceID="SqlDataSourceFech" DataTextField="FechaHora" DataValueField="FechaHora">
                        <asp:ListItem>2020/06/18 12:00:00</asp:ListItem>
                        <asp:ListItem>2020/06/18 14:00:00</asp:ListItem>
                        <asp:ListItem>2020/06/18 16:00:00</asp:ListItem>
                        <asp:ListItem>2020/06/18 18:00:00</asp:ListItem>
                        <asp:ListItem>2020/06/19 12:00:00</asp:ListItem>
                        <asp:ListItem>2020/06/19 14:00:00</asp:ListItem>
                        <asp:ListItem>2020/06/19 16:00:00</asp:ListItem>
                        <asp:ListItem>2020/06/19 18:00:00</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceFech" runat="server" ConnectionString="<%$ ConnectionStrings:DBCinecatrachoConnectionString %>" SelectCommand="SELECT [FechaHora] FROM [t_Pelicula]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style34" style="text-align: right; background-color: #66FFCC; color: #0066FF; font-size: 18px;">Cantidad:</td>
                <td class="auto-style67" style="background-color: #66FFCC;">
                    <asp:TextBox ID="txtcantidad" runat="server" Height="30px" ReadOnly="True" Width="130px">1</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Text="Solo puede comprar 1 Boleto por persona" Font-Size="8pt" ForeColor="Black"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style35" style="text-align: right; background-color: #66FFCC; color: #0066FF; font-size: 18px;">Fila:</td>
                <td class="auto-style68" style="background-color: #66FFCC">
                    <asp:DropDownList ID="cmbfila" runat="server" Height="30px" Width="139px">
                        <asp:ListItem>A</asp:ListItem>
                        <asp:ListItem>B</asp:ListItem>
                        <asp:ListItem>C</asp:ListItem>
                        <asp:ListItem>D</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style32" style="text-align: right; background-color: #66FFCC; color: #0066FF; font-size: 18px;">Asiento:</td>
                <td class="auto-style69" style="background-color: #66FFCC">
                    <asp:DropDownList ID="cmbasiento" runat="server" Height="32px" Width="139px">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style36" style="text-align: right; background-color: #66FFCC; color: #0066FF; font-size: 18px;">Precio:</td>
                <td id="lblprecio" class="auto-style70" style="background-color: #66FFCC">
                    <asp:TextBox ID="txtprecio" runat="server" Height="30px" ReadOnly="True" Width="130px" BorderColor="#3399FF"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style72" style="border-color: #4FBAFB; border-width: 2px; text-align: center; color: #FFFFFF; font-size: 21px; font-style: normal; background-color: #4FBAFB;  " colspan="4">Datos de Tarjeta<br />
                    <asp:Image ID="Image1" runat="server" Height="52px" ImageUrl="~/Imagenes/visa1.jpg" Width="100px" />
                &nbsp;
                    <asp:Image ID="Image2" runat="server" Height="50px" ImageUrl="~/Imagenes/visa 2.jpg" Width="95px" />
&nbsp;
                    <asp:Image ID="Image3" runat="server" Height="50px" ImageUrl="~/Imagenes/visa 3.jpg" Width="85px" />
&nbsp;
                    <asp:Image ID="Image4" runat="server" Height="51px" ImageUrl="~/Imagenes/visa4.jpg" Width="81px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style63" style="border-width: 2px; text-align: center; color: #0066FF; font-size: 21px; font-style: normal; background-color: #4FBAFB;  " rowspan="7">
                    <asp:ImageButton ID="ImageButton3" runat="server" BorderColor="#66FFCC" BorderWidth="5px" Height="217px" ImageUrl="~/Imagenes/deadpool.jpg" Width="199px" />
                </td>
                <td class="auto-style73" style="text-align: right; background-color: #4FBAFB; color: #FFFFFF; font-size: 18px;">&nbsp; Numero De Tarjeta:</td>
                <td id="lblprecio" class="auto-style74" style="background-color: #4FBAFB">
                    <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="160px" BorderColor="#66FFCC" TextMode="Number" MaxLength="16"></asp:TextBox>
                &nbsp;</td>
                <td class="auto-style64" style="border-color: #FF33CC; text-align: center; color: #0066FF; font-size: 21px; font-style: normal; background-color: #4FBAFB;  " rowspan="7">
                    <asp:ImageButton ID="ImageButton4" runat="server" BorderColor="#66FFCC" BorderWidth="5px" Height="232px" ImageUrl="~/Imagenes/hitman.jpg" Width="184px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style77" style="text-align: right; background-color: #4FBAFB; color: #FFFFFF; font-size: 18px;">Numero de Seguridad:</td>
                <td id="lblprecio" class="auto-style78" style="background-color: #4FBAFB">
                    <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="160px" BorderColor="#66FFCC" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style73" style="text-align: right; background-color: #4FBAFB; color: #FFFFFF; font-size: 18px;">Correo Electronico:</td>
                <td id="lblprecio" class="auto-style74" style="background-color: #4FBAFB">
                    <asp:TextBox ID="TextBox4" runat="server" Height="30px" Width="160px" BorderColor="#66FFCC" TextMode="Email"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style73" style="text-align: right; background-color: #4FBAFB; color: #FFFFFF; font-size: 18px;">Numero Telefono:</td>
                <td id="lblprecio" class="auto-style74" style="background-color: #4FBAFB">
                    <asp:TextBox ID="TextBox5" runat="server" Height="30px" Width="160px" BorderColor="#66FFCC" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19" colspan="2" style="background-color: #4FBAFB; text-align: center;">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style19" colspan="2" style="background-color: #4FBAFB; text-align: center;">
                    <asp:Label ID="Label2" runat="server" ForeColor="#990505"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style80" style="background-color: #4FBAFB; text-align: center;" colspan="2">
                    
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style9" Font-Bold="True" Height="32px" Text="Comprar" Width="84px" OnClick="Button1_Click" BorderColor="#3399FF" />
                </td>
            </tr>
            <tr>
                <td class="auto-style72" style="text-align: center; color: #FFFFFF; font-size: 10px; font-style: normal; background-color: #4FBAFB; font-family: 'Times New Roman', Times, serif; text-transform: capitalize; white-space: normal;" aria-multiline="False" colspan="4">cinecatracho.com<br />
                    2020</td>
            </tr>
        </table>
    </form>
  </center>

</body>
</html>
