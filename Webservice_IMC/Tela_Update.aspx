<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Master.Master" CodeBehind="Tela_Update.aspx.cs" Inherits="Webservice_IMC.Tela_Update" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphContent" runat="server">
    <br />
    <h1>Tela de Edição</h1>
    <br />
    <asp:Label ID="labelNome"  runat="server" Text="Nome: "></asp:Label>
    <asp:TextBox ID="textboxNome" runat="server" CssClass="radiusInput" ></asp:TextBox>
    <br />
    <%--<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
Data: <asp:TextBox ID="txtData" runat="server" Columns="10" MaxLength="10" />
    <asp:Image ID="imgCalendario" ImageUrl="calendar-icon.png" runat="server" />
    <cc1:CalendarExtender ID="clnData" runat="server" PopupButtonID="imgCalendario" TargetControlID="txtData" />
    --%>
    <asp:Calendar ID="Calendar1" runat="server"
        ForeColor="Black"
        Height="300"
        Width="600"
        BorderColor="blue"
        BorderStyle="Double"
        ShowGridLines="True"
        DayNameFormat="Full"
        FirstDayOfWeek="Sunday"
        NextMonthText="Próximo"
        PrevMonthText="Anterior"
    ></asp:Calendar>     
    <br />
    <asp:Label ID="label1" runat="server" Text="Sexo:"></asp:Label>&nbsp;
    <asp:RadioButtonList ID="RadioButtonListSexo" CssClass="rlbTypeSearch" runat="server">
        <asp:ListItem>Masculino</asp:ListItem>
        <asp:ListItem>Feminino</asp:ListItem>
    </asp:RadioButtonList>
    <br />
    <br />
    <asp:Label ID="labelCPF" runat="server" Text="CPF:"></asp:Label>
    <asp:TextBox ID="textboxCPF" runat="server" CssClass="radiusInput"></asp:TextBox>
    <br /> 
    <br />
    <asp:Label ID="labelRG" runat="server" Text="RG:"></asp:Label>
    <asp:TextBox ID="textboxRG" runat="server" CssClass="radiusInput" ></asp:TextBox>
    <br /> 
    <br />
    <asp:Label ID="labelPeso" runat="server" Text="">Peso:</asp:Label>
    <asp:TextBox ID="textboxPeso" runat="server" CssClass="radiusInput"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="labelAltura" runat="server" Text="">Altura:</asp:Label>
    <asp:TextBox ID="textboxAltura" runat="server" CssClass="radiusInput"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="labelEmail" runat="server" Text="Email:"></asp:Label>
    <asp:TextBox ID="textboxEmail" runat="server" CssClass="radiusInput"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="labeletnia" runat="server" Text="Etnia:"></asp:Label>
    <asp:TextBox ID="textboxEtnia" runat="server" CssClass="radiusInput"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="labelAtivoExercicio" runat="server" Text="Você pratica exercicios fisicos com frequencia? "></asp:Label>
    <asp:RadioButtonList ID="RadioButtonListExercicios" CssClass="rlbTypeSearch" runat="server">
        <asp:ListItem Value="1">Sim</asp:ListItem>
        <asp:ListItem Value="0">Não</asp:ListItem>
    </asp:RadioButtonList>
    <br />
    <br />
    <asp:Label ID="labelNutricionista" runat="server" Text="Você costuma ir ao nutricionista para que o mesmo oriente sua Alimentação? "></asp:Label>
    <asp:RadioButtonList ID="RadioButtonListNutricionista" CssClass="rlbTypeSearch" runat="server">
        <asp:ListItem Value="1">Sim</asp:ListItem>
        <asp:ListItem Value="0">Não</asp:ListItem>
    </asp:RadioButtonList>
    <br />
    <br />
    <asp:Label ID="labeltituloEnderecos" runat="server" Text="Endereço"></asp:Label>
    <br />
    <br />
     <asp:Label ID="labelLogradouro" runat="server" Text="Logradouro:"></asp:Label>
    <asp:TextBox ID="textboxLogradouro" runat="server" CssClass="radiusInput"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="labelNumero" runat="server" Text="Numero:"></asp:Label>
    <asp:TextBox ID="textboxNumero" runat="server" CssClass="radiusInput"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="labelComplemento" runat="server" Text="Complemento:"></asp:Label>
    <asp:TextBox ID="textboxComplemento" runat="server" CssClass="radiusInput"></asp:TextBox>
    <br />
    <br />
     <asp:Label ID="labelBairro" runat="server" Text="Bairro:"></asp:Label>
    <asp:TextBox ID="textboxBairro" runat="server" CssClass="radiusInput"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="labelMunicipio" runat="server" Text="Municipio:"></asp:Label>
    <asp:TextBox ID="textboxMunicipio" runat="server" CssClass="radiusInput" ></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="labelEstado" runat="server" Text="Estado:"></asp:Label>
    <asp:TextBox ID="textboxEstado" runat="server" CssClass="radiusInput"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="labelPais" runat="server" Text="Pais:"></asp:Label>
    <asp:TextBox ID="textboxPais" runat="server" CssClass="radiusInput"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="labelCEP" runat="server" Text="CEP:"></asp:Label>
    <asp:TextBox ID="textboxCEP" runat="server" CssClass="radiusInput"></asp:TextBox>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="BtEnviar" runat="server"  CssClass="btnAdd btn" Text="Atualizar" OnClick="BtEnviar_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
    <asp:Button ID="BtLimpar" runat="server" CssClass="btn btnEdit" OnClick="BtLimpar_Click" Text="Limpar" />
</asp:Content>

