using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gestionnaire.Livraison
{
    public partial class LivraisonModele : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLivrer_Click(object sender, EventArgs e)
        {
            int? varIdModele = Convert.ToInt32(txtIdModele.Text);

            Button objButton = (Button)sender;
            GridViewRow rangeeGV = (GridViewRow)objButton.NamingContainer;

            string varQuantite = ((TextBox)rangeeGV.FindControl("txtQuantite")).Text;
            int varQuantiteInt = Convert.ToInt32(varQuantite);

            PerruquesDSTTableAdapters.ModeleTableAdapter adapteurModele = new PerruquesDSTTableAdapters.ModeleTableAdapter();
            adapteurModele.LivrerModele(varIdModele, varQuantiteInt);

            GridView1.DataBind();
        }
    }
}