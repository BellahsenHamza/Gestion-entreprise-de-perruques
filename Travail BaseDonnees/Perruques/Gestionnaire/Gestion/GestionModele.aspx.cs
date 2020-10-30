using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gestionnaire.Gestion
{
    public partial class GestionPerruque : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void lbInserer_Click(object sender, EventArgs e)
        {
            ModeleDS.InsertParameters["Code"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtCodeIns")).Text;
            ModeleDS.InsertParameters["IdStyle"].DefaultValue = ((DropDownList)GridView1.FooterRow.FindControl("ddlStyleIns")).SelectedValue;
            ModeleDS.InsertParameters["IdCoupe"].DefaultValue = ((DropDownList)GridView1.FooterRow.FindControl("ddlCoupeIns")).SelectedValue;
            ModeleDS.InsertParameters["IdCouleur"].DefaultValue = ((DropDownList)GridView1.FooterRow.FindControl("ddlCouleurIns")).SelectedValue;
            ModeleDS.InsertParameters["Longueur"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtLongueurIns")).Text;
            ModeleDS.InsertParameters["IdGenre"].DefaultValue = ((DropDownList)GridView1.FooterRow.FindControl("ddlGenreIns")).SelectedValue;
            ModeleDS.InsertParameters["Prix"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtPrixIns")).Text;
            ModeleDS.InsertParameters["QteInventaire"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtQteInventaireIns")).Text;
            ModeleDS.InsertParameters["QteReserve"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtQteReserveIns")).Text;
            ModeleDS.InsertParameters["IdFournisseur"].DefaultValue = ((DropDownList)GridView1.FooterRow.FindControl("ddlFournisseurIns")).SelectedValue;

            ModeleDS.Insert();
       
        }


    }
}