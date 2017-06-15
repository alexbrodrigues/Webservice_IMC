using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Webservice_IMC
{
    public partial class Tela_Inicial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            localhost.IMC_WS IMC = new localhost.IMC_WS();
            this.grdDados.DataSource = IMC.getPessoa();
            this.grdDados.DataBind();

        }
    }
}