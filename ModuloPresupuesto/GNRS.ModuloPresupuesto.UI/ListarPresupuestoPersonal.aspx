<%@ Page Title="" Language="C#" MasterPageFile="~/ModuloPresupuesto.Master" AutoEventWireup="true" CodeBehind="ListarPresupuestoPersonal.aspx.cs" Inherits="GNRS.ModuloPresupuesto.UI.ListarPresupuestoPersonal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="contenido" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true" EnablePartialRendering="true" >  
    
    </asp:ScriptManager> 

    <asp:Panel ID="Panel1" runat="server" ScrollBars="Vertical" CssClass="panel" >  
        <asp:UpdatePanel ID="DatosUpdatePanel" runat="server" UpdateMode="Conditional" > 
            <ContentTemplate>
                <table class="texto">
                    <tr>
                        <td colspan="8" ><b style="font-size:11pt">Puede filtrar los presupuestos de personal proyectado por los siguientes criterios :</b></td>
                    </tr>
                    <tr>
                        <td>Categoría de Personal</td>
                        <td>:</td>
                        <td><asp:DropDownList ID="ddlCategoria" runat="server" AutoPostBack="True" 
                                Enabled="true" onselectedindexchanged="ddlCategoria_SelectedIndexChanged" Width="100%"></asp:DropDownList></td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>Estado</td>
                        <td>:</td>
                        <td>
                            <asp:DropDownList ID="ddlEstado" runat="server" AutoPostBack="True" 
                                Enabled="true" onselectedindexchanged="ddlEstado_SelectedIndexChanged" Width="100%">
                                <asp:ListItem Value="" > Seleccione el estado </asp:ListItem>
                                <asp:ListItem Value="P"  Text="Pendiente"> </asp:ListItem>
                                <asp:ListItem Value="A"  Text="Aprobado"> </asp:ListItem>
                                <asp:ListItem Value="E"  Text="Eliminado"> </asp:ListItem>
                                <asp:ListItem Value="EP"  Text="Enviado para aprobaci&oacute;n"> </asp:ListItem>
                                <asp:ListItem Value="PA"  Text="Pre aprobado"> </asp:ListItem>
                                <asp:ListItem Value="R"  Text="Rechazado"> </asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>Localidad</td>
                        <td>:</td>
                        <td><asp:DropDownList ID="ddlLocalidad" runat="server" AutoPostBack="True" 
                                Enabled="true" onselectedindexchanged="ddlLocalidad_SelectedIndexChanged" Width="100%"></asp:DropDownList></td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>&Aacute;rea</td>
                        <td>:</td>
                        <td><asp:DropDownList ID="ddlArea" runat="server" AutoPostBack="True" 
                                Enabled="true" onselectedindexchanged="ddlArea_SelectedIndexChanged" Width="100%"></asp:DropDownList></td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>Secci&oacute;n</td>
                        <td>:</td>
                        <td><asp:DropDownList ID="ddlSeccion" runat="server" AutoPostBack="True" 
                                Enabled="true" onselectedindexchanged="ddlSeccion_SelectedIndexChanged" Width="100%"></asp:DropDownList></td>
                    </tr>
                </table>
                <br />
                <div id="dvGrilla">
                <asp:GridView ID="ListaPersonalProyectadoGridView" runat="server" 
                    AutoGenerateColumns="false" align = "center" CellPadding="3" CellSpacing="1" >
                    	<HeaderStyle CssClass="GridHeader" />
		                <RowStyle CssClass="GridRow" HorizontalAlign="Center" />
                        <AlternatingRowStyle CssClass="GridAlternateRow" HorizontalAlign="Center" />
                    <Columns>
                        <asp:BoundField HeaderText="ID Persona" DataField="id_persona"  visible ="false"/>
                        <asp:BoundField HeaderText="Identificador" DataField="nombre_persona" ItemStyle-Width="200"/>
                        <asp:BoundField HeaderText="ID Categoría" DataField="id_categoria" visible ="false"/>
                        <asp:BoundField HeaderText="Categoría" DataField="categoria" ItemStyle-Width="200"/>
                        <asp:BoundField HeaderText="ID Localidad" DataField="id_localidad" visible ="false" />
                        <asp:BoundField HeaderText="Localidad" DataField="localidad" ItemStyle-Width="200" />
                        <asp:BoundField HeaderText="ID Area" DataField="id_area" visible ="false" />
                        <asp:BoundField HeaderText="&Aacute;rea" DataField="area" ItemStyle-Width="200"/>
                        <asp:BoundField HeaderText="ID Seccion" DataField="id_seccion" visible ="false" />
                        <asp:BoundField HeaderText="Secci&oacute;n" DataField="seccion" ItemStyle-Width="200"/>
                        <asp:BoundField HeaderText="Estado" DataField="estado_persona" ItemStyle-Width="200"/>
                        <asp:BoundField HeaderText="Registro" DataField="fecha_creacion" ItemStyle-Width="200" DataFormatString="{0:dd/MM/yyyy}"/>
                        <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:ImageButton ID="imgEditar" runat="server" CommandName="cmdEditar" CommandArgument='<%# Eval("id_persona") %>' ImageUrl="~/images/edit.png"/>
                            </ItemTemplate>                       
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:ImageButton ID="imgEliminar" runat="server" CommandName="cmdEliminar" CommandArgument='<%# Eval("id_persona") %>' ImageUrl="~/images/delete.gif"/>
                            </ItemTemplate>                       
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </asp:Panel>

</asp:Content>
