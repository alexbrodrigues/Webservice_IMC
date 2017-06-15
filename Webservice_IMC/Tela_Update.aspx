<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tela_Update.aspx.cs" Inherits="Webservice_IMC.Tela_Update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <fieldset class="title" aria-readonly="True" style="font-family: Arial, Helvetica, sans-serif; font-weight: bold; font-style: italic; font-variant: normal; text-transform: uppercase; color: #000000; border: thin solid #C0C0C0; position: absolute; z-index: inherit; background-color: #FFFFFF; width: 907px; height: 42px; top: 1px; left: 2px;">
            <br />
            <asp:Label ID="Labeltitulo" runat="server" Text="Tela de Cadastro"></asp:Label>
        </fieldset>
    <fieldset style="border: thin solid #C0C0C0; position: absolute; z-index: inherit; width: 908px; height: 1300px; top: 50px; left: 2px; margin-right: 3px;">
        <br />
           <asp:Label ID="labelNome" runat="server" Text="Nome: "></asp:Label>
        <asp:TextBox ID="textboxNome" runat="server" CssClass="textbox"  Width="674px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="labelDatanascimento" runat="server" Text="Data de Nascimento:"></asp:Label>
        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        <br />
        <asp:Label ID="label1" runat="server" Text="Sexo:"></asp:Label>&nbsp;
       <asp:RadioButtonList ID="RadioButtonListSexo" runat="server">
            <asp:ListItem>Masculino</asp:ListItem>
            <asp:ListItem>Feminino</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <br />
        <asp:Label ID="labelCPF" runat="server" Text="CPF:"></asp:Label>
        <asp:TextBox ID="textboxCPF" runat="server" style="margin-left: 5px" Width="685px"></asp:TextBox>
        <br /> 
        <br />
        <asp:Label ID="labelRG" runat="server" Text="RG:"></asp:Label>
        &nbsp;
        <asp:TextBox ID="textboxRG" runat="server" style="margin-left: 5px" Width="685px" ></asp:TextBox>
        <br /> 
        <br />
        <asp:Label ID="labelPeso" runat="server" Text="">Peso:</asp:Label>
        &nbsp;
        <asp:TextBox ID="textboxPeso" runat="server" Height="19px" Width="683px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="labelAltura" runat="server" Text="">Altura:</asp:Label>
        <asp:TextBox ID="textboxAltura" runat="server" Height="19px" Width="682px"></asp:TextBox>
        <br />
        <br />
         <asp:Label ID="labelEmail" runat="server" Text="Email:"></asp:Label>
        <asp:TextBox ID="textboxEmail" runat="server" style="margin-left: 5px" Width="683px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="labeletnia" runat="server" Text="Etnia:"></asp:Label>
        <asp:TextBox ID="textboxEtnia" runat="server" style="margin-left: 5px" Width="685px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="labelAtivoExercicio" runat="server" Text="Você pratica exercicios fisicos com frequencia? "></asp:Label>
        <asp:RadioButtonList ID="RadioButtonListExercicios" runat="server">
            <asp:ListItem Value="1">Sim</asp:ListItem>
            <asp:ListItem Value="0">Não</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <br />
        <asp:Label ID="labelNutricionista" runat="server" Text="Você costuma ir ao nutricionista para que o mesmo oriente sua Alimentação? "></asp:Label>
       <asp:RadioButtonList ID="RadioButtonListNutricionista" runat="server">
            <asp:ListItem Value="1">Sim</asp:ListItem>
            <asp:ListItem Value="0">Não</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <br />
        <asp:Label ID="labeltituloEnderecos" runat="server" Text="Endereço"></asp:Label>
        <br />
        <br />
         <asp:Label ID="labelLogradouro" runat="server" Text="Logradouro:"></asp:Label>
        <asp:TextBox ID="textboxLogradouro" runat="server" style="margin-left: 5px" Width="698px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="labelNumero" runat="server" Text="Numero:"></asp:Label>
        <asp:TextBox ID="textboxNumero" runat="server" style="margin-left: 5px" Width="721px" ></asp:TextBox>
        <br />
        <br />
         <asp:Label ID="labelComplemento" runat="server" Text="Complemento:"></asp:Label>
        <asp:TextBox ID="textboxComplemento" runat="server" style="margin-left: 5px" Width="686px" ></asp:TextBox>
        <br />
        <br />
         <asp:Label ID="labelBairro" runat="server" Text="Bairro:"></asp:Label>
        <asp:TextBox ID="textboxBairro" runat="server" style="margin-left: 5px" Width="731px" ></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="labelMunicipio" runat="server" Text="Municipio:"></asp:Label>
        <asp:TextBox ID="textboxMunicipio" runat="server" style="margin-left: 5px" Width="710px" ></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="labelEstado" runat="server" Text="Estado:"></asp:Label>
        <asp:TextBox ID="textboxEstado" runat="server" style="margin-left: 5px" Width="731px" ></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="labelPais" runat="server" Text="Pais:"></asp:Label>
        <asp:TextBox ID="textboxPais" runat="server" style="margin-left: 5px" Width="746px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="labelCEP" runat="server" Text="CEP:"></asp:Label>
        <asp:TextBox ID="textboxCEP" runat="server" style="margin-left: 5px" Width="743px"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BtEnviar" runat="server" Text="Enviar" OnClick="BtEnviar_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:Button ID="BtLimpar" runat="server" OnClick="BtLimpar_Click" Text="Limpar" />
         </fieldset>     
    </div>
    </form>
</body>
</html>
