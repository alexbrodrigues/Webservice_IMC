using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Webservice_IMC
{
    public partial class Tela_Pesquisar : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            localhost.IMC_WS IMC = new localhost.IMC_WS();
            this.gwPessoas.DataSource = IMC.getPessoa();
            this.gwPessoas.DataBind();
        }

        protected void gwPessoas_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = this.gwPessoas.SelectedRow;
            Tela_Update Update = new Tela_Update(row);
            Response.Redirect("Tela_Update.aspx", false);

        }

        protected void gwPessoas_RowEditing(object sender, EventArgs e)
        {
           

        }

    }
}