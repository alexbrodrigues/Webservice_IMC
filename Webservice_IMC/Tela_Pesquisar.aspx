<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master.Master" CodeBehind="Tela_Pesquisar.aspx.cs" Inherits="Webservice_IMC.Tela_Pesquisar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphContent" runat="server">
    <asp:GridView ID="gwPessoas" runat="server" AutoGenerateColumns="False"  EmptyDataText="Não Existem Pessoas Cadastradas...">
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
            <asp:BoundField DataField="idPessoa" HeaderText="Atualizar" Visible="False" />
            <asp:TemplateField>
            <ItemTemplate>
                <asp:Button ID="btnEditar" runat="server" CommandName="Editar" Text="Editar Dados"/>
            </ItemTemplate>
            </asp:TemplateField>
            
                    </Columns>
    </asp:GridView> 
</asp:Content>
