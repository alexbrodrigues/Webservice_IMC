<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tela_Inicial.aspx.cs" Inherits="Webservice_IMC.Tela_Inicial" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <a runat="server" href="Tela_Cadastro.aspx">Cadastro de Pessoa</a>
       <asp:GridView ID="grdDados" runat="server" AutoGenerateColumns="false" OnSelectedIndexChanged="grdDados_SelectedIndexChanged" >
        <Columns>        
            <asp:BoundField DataField="nomeCompleto" HeaderText="Nome Completo" />
            <asp:BoundField DataField="dataNascimento" HeaderText="Data de Nascimento" />
            <asp:BoundField DataField="sexo" HeaderText="Sexo" />
            <asp:BoundField DataField="cpf" HeaderText="CPF" />
            <asp:BoundField DataField="rg" HeaderText="RG" />
            <asp:BoundField DataField="peso" HeaderText="Peso" />
            <asp:BoundField DataField="altura" HeaderText="Altura" />
            <asp:BoundField DataField="email" HeaderText="Email" />
            <asp:BoundField DataField="etnia" HeaderText="Etnia" />
            <asp:BoundField DataField="ativoExercicio" HeaderText="Faz Exercícios?" />
             <asp:BoundField DataField="ativoNutricionista" HeaderText="Frequenta Nutricionista?" />
             <asp:BoundField DataField="logradouro" HeaderText="Logradouro" />
             <asp:BoundField DataField="numero" HeaderText="Número" />
             <asp:BoundField DataField="complemento" HeaderText="Complemento" />
             <asp:BoundField DataField="bairro" HeaderText="Bairro" />
             <asp:BoundField DataField="municipio" HeaderText="Município" />
             <asp:BoundField DataField="estado" HeaderText="Estado" />
            <asp:BoundField DataField="pais" HeaderText="País" />
            <asp:BoundField DataField="cep" HeaderText="CEP" />
            
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="btnEditar" runat="server" CommandName="Editar" Text="Editar Dados"/>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView> 
    </div>

    </form>
</body>
</html>
