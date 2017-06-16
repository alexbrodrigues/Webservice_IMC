using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;

namespace Webservice_IMC
{
	public partial class Tela_Update : System.Web.UI.Page
	{
        public string NomeCompleto;

        public Tela_Update(GridViewRow row)
        {
            OnInit(EventArgs e);
            string nome = row.Cells[1].Text;
            this.textboxNome.Text = nome;

          //  if (row.Cells[3].Value.ToString() == "Ativo")
          // {
          //    cheAtivo.Checked = true;
          // }
          // else
          //  {
          // cheAtivo.Checked = false;
          // }

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
 

        protected void BtEnviar_Click(object sender, EventArgs e)
        {

        }

        protected void BtLimpar_Click(object sender, EventArgs e)
        {

        }
    }
}