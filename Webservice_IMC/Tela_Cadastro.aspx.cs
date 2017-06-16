using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Webservice_IMC
{
    public partial class Tela_Cadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void BtEnviar_Click(object sender, EventArgs e)
        {
            int id = 0;
            localhost.IMC_WS IMC = new localhost.IMC_WS();
            string Nome = textboxNome.Text;
            DateTime Data = Calendar1.SelectedDate.Date;
            string Sexo = RadioButtonListSexo.Text;
            string Cpf = textboxCPF.Text;
            string Rg = textboxRG.Text;
            Double Peso = Double.Parse(textboxPeso.Text);
            Double Altura = Double.Parse(textboxAltura.Text);
            string Email = textboxEmail.Text;
            string Etnia = textboxEtnia.Text;
            int AtivoExercicio = Int32.Parse(RadioButtonListExercicios.Text);
            int AtivoNutricionista = Int32.Parse(RadioButtonListNutricionista.Text);
            string Logradouro = textboxLogradouro.Text;
            string Numero = textboxNumero.Text;
            string Complemento = textboxComplemento.Text;
            string Bairro = textboxBairro.Text;
            string Municipio = textboxMunicipio.Text;
            string Estado = textboxEstado.Text;
            string Pais = textboxPais.Text;
            string CEP = textboxCEP.Text;

           id = IMC.incluirDados(Nome, Data, Sexo, Cpf, Rg, Peso, Altura, Email, Etnia, AtivoExercicio, AtivoNutricionista, Logradouro, Numero, Complemento, Bairro, Municipio, Estado, Pais, CEP);
           IMC.EnvioIMC(id);
        }

        protected void BtLimpar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}