<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LivrerModele.aspx.cs" Inherits="Gestionnaire.Livraison.LivraisonModele" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblIdModele" runat="server" Text="Entrez l'Id du modèle à livrer: "></asp:Label>
            <asp:TextBox ID="txtIdModele" runat="server"></asp:TextBox>
            <asp:Button ID="btnAfficher" runat="server" Text="Afficher" />
        </div>
        <asp:ObjectDataSource ID="ModeleDS" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetModeleParId" TypeName="Gestionnaire.PerruquesDSTTableAdapters.ModeleTableAdapter">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtIdModele" Name="IdModele" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="ModeleDS" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="IdModele" HeaderText="IdModele" InsertVisible="False" ReadOnly="True" SortExpression="IdModele" />
                <asp:BoundField DataField="Code" HeaderText="Code" SortExpression="Code" />
                <asp:BoundField DataField="Style" HeaderText="Style" SortExpression="Style" />
                <asp:BoundField DataField="Coupe" HeaderText="Coupe" SortExpression="Coupe" />
                <asp:BoundField DataField="Couleur" HeaderText="Couleur" SortExpression="Couleur" />
                <asp:BoundField DataField="Longueur" HeaderText="Longueur" SortExpression="Longueur" />
                <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
                <asp:BoundField DataField="Prix" HeaderText="Prix" SortExpression="Prix" />
                <asp:BoundField DataField="QteInventaire" HeaderText="Qté Inventaire" SortExpression="QteInventaire" />
                <asp:BoundField DataField="QteReserve" HeaderText="Qté Réservée" SortExpression="QteReserve" />
                <asp:BoundField DataField="Fournisseur" HeaderText="Fournisseur" SortExpression="Fournisseur" />
                <asp:TemplateField HeaderText="Quantité livrée">
                    <ItemTemplate>
                        <asp:TextBox ID="txtQuantite" runat="server"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="btnLivrer" OnClick="btnLivrer_Click" runat="server" Text="Livrer" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
    </form>
</body>
</html>
