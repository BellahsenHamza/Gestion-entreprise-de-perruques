<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GestionModele.aspx.cs" Inherits="Gestionnaire.Gestion.GestionPerruque" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:ObjectDataSource ID="CouleurDS" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetCouleur" TypeName="Gestionnaire.PerruquesDSTTableAdapters.CouleurTableAdapter"></asp:ObjectDataSource>
        <asp:ObjectDataSource ID="CoupeDS" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetCoupe" TypeName="Gestionnaire.PerruquesDSTTableAdapters.CoupeTableAdapter"></asp:ObjectDataSource>
        <asp:ObjectDataSource ID="StyleDS" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetStyle" TypeName="Gestionnaire.PerruquesDSTTableAdapters.StyleTableAdapter"></asp:ObjectDataSource>
        <asp:ObjectDataSource ID="FournisseurDS" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetFournisseur" TypeName="Gestionnaire.PerruquesDSTTableAdapters.FournisseurTableAdapter"></asp:ObjectDataSource>
        <asp:ObjectDataSource ID="GenreDS" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetGenre" TypeName="Gestionnaire.PerruquesDSTTableAdapters.GenreTableAdapter"></asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ModeleDS" runat="server" DeleteMethod="Delete" InsertMethod="Insert" SelectMethod="GetModele" TypeName="Gestionnaire.PerruquesDSTTableAdapters.ModeleTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="IdModele" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Code" Type="String" />
                <asp:Parameter Name="Prix" Type="Decimal" />
                <asp:Parameter Name="QteInventaire" Type="Int32" />
                <asp:Parameter Name="QteReserve" Type="Int32" />
                <asp:Parameter Name="IdStyle" Type="Int32" />
                <asp:Parameter Name="IdCouleur" Type="Int32" />
                <asp:Parameter Name="Longueur" Type="Int32" />
                <asp:Parameter Name="IdCoupe" Type="Int32" />
                <asp:Parameter Name="IdGenre" Type="Int32" />
                <asp:Parameter Name="IdFournisseur" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="IdModele" Type="Int32" />
                <asp:Parameter Name="Code" Type="String" />
                <asp:Parameter Name="Prix" Type="Decimal" />
                <asp:Parameter Name="QteInventaire" Type="Int32" />
                <asp:Parameter Name="QteReserve" Type="Int32" />
                <asp:Parameter Name="IdStyle" Type="Int32" />
                <asp:Parameter Name="IdCouleur" Type="Int32" />
                <asp:Parameter Name="Longueur" Type="Int32" />
                <asp:Parameter Name="IdCoupe" Type="Int32" />
                <asp:Parameter Name="IdGenre" Type="Int32" />
                <asp:Parameter Name="IdFournisseur" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IdModele" DataSourceID="ModeleDS" ShowFooter="True">
            <Columns>
                <asp:BoundField DataField="IdModele" HeaderText="IdModele" InsertVisible="False" ReadOnly="True" SortExpression="IdModele" />
                <asp:TemplateField HeaderText="Code" SortExpression="Code">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Code") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Code") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtCodeIns" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Style" SortExpression="Style">
                    <EditItemTemplate>
                        <asp:DropDownList ID="ddlStyleUpd" runat="server" DataSourceID="StyleDS" DataTextField="Style" DataValueField="IdStyle" SelectedValue='<%# Bind("IdStyle") %>'></asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Style") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:DropDownList ID="ddlStyleIns" runat="server" DataSourceID="StyleDS" DataTextField="Style" DataValueField="IdStyle" ></asp:DropDownList>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Coupe" SortExpression="Coupe">
                    <EditItemTemplate>
                        <asp:DropDownList ID="ddlCoupeUpd" runat="server" DataSourceID="CoupeDS" DataTextField="Coupe" DataValueField="IdCoupe" SelectedValue='<%# Bind("IdCoupe") %>'></asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("Coupe") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:DropDownList ID="ddlCoupeIns" runat="server" DataSourceID="CoupeDS" DataTextField="Coupe" DataValueField="IdCoupe"></asp:DropDownList>

                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Couleur" SortExpression="Couleur">
                    <EditItemTemplate>
                        <asp:DropDownList ID="ddlCouleurUpd" runat="server" DataSourceID="CouleurDS" DataTextField="Couleur" DataValueField="IdCouleur" SelectedValue='<%# Bind("IdCouleur") %>'></asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("Couleur") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:DropDownList ID="ddlCouleurIns" runat="server" DataSourceID="CouleurDS" DataTextField="Couleur" DataValueField="IdCouleur"></asp:DropDownList>

                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Longueur" SortExpression="Longueur">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Longueur") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("Longueur") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtLongueurIns" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Genre" SortExpression="Genre">
                    <EditItemTemplate>
                        <asp:DropDownList ID="ddlGenreUpd" runat="server" DataSourceID="GenreDS" DataTextField="Genre" DataValueField="IdGenre" SelectedValue='<%# Bind("IdGenre") %>'></asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("Genre") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:DropDownList ID="ddlGenreIns" runat="server" DataSourceID="GenreDS" DataTextField="Genre" DataValueField="IdGenre" ></asp:DropDownList>

                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Prix" SortExpression="Prix">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("Prix") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# Bind("Prix") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtPrixIns" runat="server"></asp:TextBox>

                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="QteInventaire" SortExpression="QteInventaire">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("QteInventaire") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label10" runat="server" Text='<%# Bind("QteInventaire") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtQteInventaireIns" runat="server"></asp:TextBox>

                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="QteReserve" SortExpression="QteReserve">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("QteReserve") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label11" runat="server" Text='<%# Bind("QteReserve") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtQteReserveIns" runat="server"></asp:TextBox>

                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Fournisseur" SortExpression="Fournisseur">
                    <EditItemTemplate>
                        <asp:DropDownList ID="ddlFournisseurUpd" runat="server" DataSourceID="FournisseurDS" DataTextField="Fournisseur" DataValueField="IdFournisseur" SelectedValue='<%# Bind("IdFournisseur") %>'></asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Fournisseur") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:DropDownList ID="ddlFournisseurIns" runat="server" DataSourceID="FournisseurDS" DataTextField="Fournisseur" DataValueField="IdFournisseur" ></asp:DropDownList>

                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Mettre à jour"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Annuler"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>

                        <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Edit" Text="Modifier"></asp:LinkButton>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:LinkButton ID="lbInserer" runat="server" OnClick="lbInserer_Click">Ajouter</asp:LinkButton>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" Text="Supprimer"></asp:LinkButton>
                    </ItemTemplate>
                    <FooterTemplate>

                    </FooterTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
