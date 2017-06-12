﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;
using System.Xml.Linq;
using System.Net.Mail;

namespace Webservice_IMC
{
    /// <summary>
    /// Summary description for Service1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class Service1 : WebService
    {

        public SqlConnection connection = new SqlConnection(@"Data Source=VM-ALEX\SQLSERVER2008R2;Initial Catalog=DB_IMC;Persist Security Info=True;User ID=users3i;Password=users3i");

        [WebMethod]
        public void incluirDados(string nomeCompleto,DateTime dataNascimento ,string sexo, string cpf, string rg, Double peso, Double altura, string email,string etnia, int ativoExercicio, int ativoNutricionista, string logradouro, string numero , string complemento, string bairro , string municipio, string estado , string pais, string cep)
        {
            connection.Open();

            DataSet ds = new DataSet();
            SqlDataAdapter ad = new SqlDataAdapter("INSERT INTO Pessoa (nomeCompleto, dataNascimento, sexo, cpf, rg, peso,altura,email,etnia,ativoExercicio,ativoNutricionista,logradouro, numero , complemento, bairro , municipio, estado , pais, cep) VALUES(@nomeCompleto, @dataNascimento, @sexo, @cpf, @rg, @peso,@altura,@email,@etnia,@ativoExercicio,@ativoNutricionista,@logradouro, @numero , @complemento, @bairro , @municipio, @estado , @pais, @cep)", connection);

            ad.SelectCommand.Parameters.Add("@nomeCompleto", SqlDbType.VarChar, 250).Value = nomeCompleto;
            ad.SelectCommand.Parameters.Add("@dataNascimento", SqlDbType.Date, 11).Value = dataNascimento;
            ad.SelectCommand.Parameters.Add("@sexo", SqlDbType.VarChar, 45).Value = sexo;
            ad.SelectCommand.Parameters.Add("@cpf", SqlDbType.VarChar, 11).Value = cpf;
            ad.SelectCommand.Parameters.Add("@rg", SqlDbType.VarChar, 11).Value = rg;
            ad.SelectCommand.Parameters.Add("@peso", SqlDbType.Decimal).Value = peso;
            ad.SelectCommand.Parameters.Add("@altura", SqlDbType.Decimal).Value = altura;
            ad.SelectCommand.Parameters.Add("@email", SqlDbType.VarChar,255).Value = email;
            ad.SelectCommand.Parameters.Add("@etnia", SqlDbType.VarChar,255).Value = etnia;
            ad.SelectCommand.Parameters.Add("@ativoExercicio", SqlDbType.Int).Value = ativoExercicio;
            ad.SelectCommand.Parameters.Add("@ativoNutricionista", SqlDbType.Int).Value = ativoNutricionista;
            ad.SelectCommand.Parameters.Add("@logradouro", SqlDbType.VarChar,255).Value = logradouro;
            ad.SelectCommand.Parameters.Add("@numero", SqlDbType.VarChar,10).Value = numero;
            ad.SelectCommand.Parameters.Add("@complemento", SqlDbType.VarChar,255).Value = complemento;
            ad.SelectCommand.Parameters.Add("@bairro", SqlDbType.VarChar,100).Value = bairro;
            ad.SelectCommand.Parameters.Add("@municipio", SqlDbType.VarChar,100).Value = municipio;
            ad.SelectCommand.Parameters.Add("@estado", SqlDbType.VarChar,100).Value = estado;
            ad.SelectCommand.Parameters.Add("@pais", SqlDbType.VarChar,100).Value = pais;
            ad.SelectCommand.Parameters.Add("@cep", SqlDbType.VarChar,8).Value = cep;

            try
            {
                ad.Fill(ds);
            }
            catch (SqlException ex)
            {
                throw new Exception("ERRO BANCO DE DADOS: " + ex.Message.ToString());
            }
            catch (Exception ex)
            {
                throw new Exception("ERRO RUNTIME: " + ex.Message.ToString());
            }
            finally
            {
                connection.Close();
                connection.Dispose();
                ad.Dispose();
            }
        }

        [WebMethod]
        public void alterarDados(int idPessoa, string nomeCompleto, DateTime dataNascimento, string sexo, string cpf, string rg, Double peso, Double altura, string email, string etnia, int ativoExercicio, int ativoNutricionista, string logradouro, string numero, string complemento, string bairro, string municipio, string estado, string pais, string cep)
        {
            connection.Open();

            DataSet ds = new DataSet();

            SqlDataAdapter ad = new SqlDataAdapter("UPDATE Pessoa SET nomeCompleto = @nomeCompleto, dataNascimento = @dataNascimento,sexo = @sexo, cpf = @cpf, senha = @senha,  cpf = @cpf, rg = @rg, peso = @peso,altura = @altura,email = @email,etnia = @etnia,ativoExercicio = @ativoExercicio,ativoNutricionista = @ativoNutricionista , logradouro = @logradouro, numero = @numero, complemento = @complemento, bairro = @bairro, municipio = @municipio, estado = @estado, pais = @pais, cep = @cep WHERE idPessoa = @idPessoa", connection);
            ad.SelectCommand.Parameters.AddWithValue("@idPessoa",SqlDbType.Int).Value=idPessoa;
            ad.SelectCommand.Parameters.Add("@nomeCompleto", SqlDbType.VarChar, 250).Value = nomeCompleto;
            ad.SelectCommand.Parameters.Add("@dataNascimento", SqlDbType.Date, 11).Value = dataNascimento;
            ad.SelectCommand.Parameters.Add("@sexo", SqlDbType.VarChar, 45).Value = sexo;
            ad.SelectCommand.Parameters.Add("@cpf", SqlDbType.VarChar, 11).Value = cpf;
            ad.SelectCommand.Parameters.Add("@rg", SqlDbType.VarChar, 11).Value = rg;
            ad.SelectCommand.Parameters.Add("@peso", SqlDbType.Decimal).Value = peso;
            ad.SelectCommand.Parameters.Add("@altura", SqlDbType.Decimal).Value = altura;
            ad.SelectCommand.Parameters.Add("@email", SqlDbType.VarChar, 255).Value = email;
            ad.SelectCommand.Parameters.Add("@etnia", SqlDbType.VarChar, 255).Value = etnia;
            ad.SelectCommand.Parameters.Add("@ativoExercicio", SqlDbType.Int).Value = ativoExercicio;
            ad.SelectCommand.Parameters.Add("@ativoNutricionista", SqlDbType.Int).Value = ativoNutricionista;
            ad.SelectCommand.Parameters.Add("@logradouro", SqlDbType.VarChar, 255).Value = logradouro;
            ad.SelectCommand.Parameters.Add("@numero", SqlDbType.VarChar, 10).Value = numero;
            ad.SelectCommand.Parameters.Add("@complemento", SqlDbType.VarChar, 255).Value = complemento;
            ad.SelectCommand.Parameters.Add("@bairro", SqlDbType.VarChar, 100).Value = bairro;
            ad.SelectCommand.Parameters.Add("@municipio", SqlDbType.VarChar, 100).Value = municipio;
            ad.SelectCommand.Parameters.Add("@estado", SqlDbType.VarChar, 100).Value = estado;
            ad.SelectCommand.Parameters.Add("@pais", SqlDbType.VarChar, 100).Value = pais;
            ad.SelectCommand.Parameters.Add("@cep", SqlDbType.VarChar, 8).Value = cep;


            try
            {
                ad.Fill(ds);
            }
            catch (SqlException ex)
            {
                throw new Exception("ERRO BANCO DE DADOS: " + ex.Message.ToString());
            }
            catch (Exception ex)
            {
                throw new Exception("ERRO RUNTIME: " + ex.Message.ToString());
            }
            finally
            {
                connection.Close();
                connection.Dispose();
                ad.Dispose();
            }
        }

        [WebMethod]
        public void MandaEmail(string recbEmail, string textoRecb)
        {

            string pMensagem = textoRecb;
            string pEmailDestino = recbEmail;

            MailMessage client = new MailMessage();
            client.From = new MailAddress("COLOCAR EMAIL DE ENVIO");
            client.To.Add(new MailAddress(pEmailDestino));
            client.Subject = "Calculo IMC";
            client.Body = pMensagem;
            client.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient();
            smtp.Host = ("smtp.gmail.com");
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("EMAIL REMETENTE", "SENHA REMETENTE");
            smtp.EnableSsl = true;
            smtp.Send(client);


        }

        [WebMethod(Description = "Calcula IMC")]

        public void CalculaImC(int idPessoa, string nomeCompleto, DateTime dataNascimento, string sexo, string cpf, string rg, Double peso, Double altura, string email, string etnia, int ativoExercicio, int ativoNutricionista, string logradouro, string numero, string complemento, string bairro, string municipio, string estado, string pais, string cep)
        {
            string pNome = nomeCompleto;
            string pSexo = sexo;
            string pCPF = cpf;
            string pRG = rg;
            string pEmail = email;
            int pratikExerc = ativoExercicio; //1 = sim; 0 = não
            int visitNutri = ativoNutricionista;   //1 = sim; 0 = não

            Double pPeso = peso;
            Double pAltura = altura;
            Double pAltura2 = (altura * altura);
            Double pImc = (peso / pAltura2);
        //string msg;


            switch (sexo) {
                case "Feminino":
                    if (pImc > 15 && pImc <= 17.9)
                    {

                        MandaEmail(email, "Parabens você tem Baixo Indice de Massa Corporea");

                    }
                    else if (pImc >= 18 && pImc <= 24.4)
                    {

                        MandaEmail(email, "Você esta com Indice de Massa Corporea dentro Ideal");

                    }

                    else if (pImc >= 24.5 && pImc <= 27.2)
                    {

                        MandaEmail(email, "Você esta com Indice de Massa Corporea com Risco Moderado ja pensou em procurar um nutricionista ou fazer atividades fisicas regularmente");

                    }
                    else if  (pImc >= 27.3)
                    {
                        MandaEmail(email, "Você esta com Indice de Massa Corporea com Risco Elevado procure um nutricionista e inicie atividades fisicas regularmente urgentemente");

                    } break;

                case "Masculino":
                    if (pImc > 17.9 && pImc <= 18.9)
                    {

                        MandaEmail(email, "Parabens você tem Baixo Indice de Massa Corporea");

                    }
                    else if (pImc >= 19 && pImc <= 24.9)
                    {

                        MandaEmail(email, "Você esta com Indice de Massa Corporea dentro Ideal");

                    }

                    else if (pImc >= 25 && pImc <= 27.7)
                    {

                        MandaEmail(email, "Você esta com Indice de Massa Corporea com Risco Moderado ja pensou em procurar um nutricionista ou fazer atividades fisicas regularmente");

                    }
                    else if (pImc >= 27.8)
                    {
                        MandaEmail(email, "Você esta com Indice de Massa Corporea com Risco Elevado procure um nutricionista e inicie atividades fisicas regularmente urgentemente");

                    }
                    break;
            }    
    }
    }
}