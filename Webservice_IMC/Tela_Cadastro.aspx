<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tela_Cadastro.aspx.cs" Inherits="Webservice_IMC.Tela_Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Label ID="Labeltitulo" runat="server" Text="Tela de Cadastro"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="labelNome" runat="server" Text="Nome: "></asp:Label>
        <asp:TextBox ID="textboxNome" runat="server" OnTextChanged="TextBox1_TextChanged" Width="674px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="labelDatanascimento" runat="server" Text="Data de Nascimento:"></asp:Label>
        <asp:TextBox ID="textboxDatanascimento" runat="server" style="margin-left: 5px" Width="586px" OnTextChanged="TextBoxEmail_TextChanged"></asp:TextBox>
        <br /> 
        <br />
        <asp:Label ID="labelSexo" runat="server" Text="Sexo: "></asp:Label>
        <asp:RadioButton id="radioMasculino" Text="Masculino" runat="server"></asp:RadioButton>
        <asp:RadioButton id="radioFeminino" Text="Feminino" runat="server"></asp:RadioButton>
        <br />
        <br />
        <asp:Label ID="labelCPF" runat="server" Text="CPF:"></asp:Label>
        <asp:TextBox ID="textboxCPF" runat="server" style="margin-left: 5px" Width="685px" OnTextChanged="TextBoxEmail_TextChanged"></asp:TextBox>
        <br /> 
        <br />
        <asp:Label ID="labelRG" runat="server" Text="RG:"></asp:Label>
        &nbsp;
        <asp:TextBox ID="textboxRG" runat="server" style="margin-left: 5px" Width="685px" OnTextChanged="TextBoxEmail_TextChanged"></asp:TextBox>
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
        <asp:TextBox ID="textboxEmail" runat="server" style="margin-left: 5px" Width="683px" OnTextChanged="TextBoxEmail_TextChanged"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="labeletnia" runat="server" Text="Etnia:"></asp:Label>
        <asp:TextBox ID="textboxEtnia" runat="server" style="margin-left: 5px" Width="685px" OnTextChanged="TextBoxEmail_TextChanged"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="labelAtivoExercicio" runat="server" Text="Você pratica exercicios fisicos com frequencia? "></asp:Label>
        <asp:RadioButton id="radiobuttonExercicioSim" Text="Sim" runat="server"></asp:RadioButton>
        <asp:RadioButton id="radiobuttonExercicioNao" Text="Não" runat="server"></asp:RadioButton>
        <br />
        <br />
        <asp:Label ID="labelNutricionista" runat="server" Text="Você costuma ir ao nutricionista para que o mesmo oriente sua Alimentação? "></asp:Label>
        <asp:RadioButton id="radiobuttonNutriSim" Text="Sim" runat="server"></asp:RadioButton>
        <asp:RadioButton id="radiobuttonnutriNao" Text="Não" runat="server"></asp:RadioButton>
        <br />
        <br />
        <asp:Label ID="labeltituloEnderecos" runat="server" Text="Endereço"></asp:Label>
        <br />
        <br />
         <asp:Label ID="labelLogradouro" runat="server" Text="Logradouro:"></asp:Label>
        <asp:TextBox ID="textboxLogradouro" runat="server" style="margin-left: 5px" Width="698px" OnTextChanged="TextBoxEmail_TextChanged"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="labelNumero" runat="server" Text="Numero:"></asp:Label>
        <asp:TextBox ID="textboxNumero" runat="server" style="margin-left: 5px" Width="721px" OnTextChanged="TextBoxEmail_TextChanged"></asp:TextBox>
        <br />
        <br />
         <asp:Label ID="labelComplemento" runat="server" Text="Complemento:"></asp:Label>
        <asp:TextBox ID="textboxComplemento" runat="server" style="margin-left: 5px" Width="686px" OnTextChanged="TextBoxEmail_TextChanged"></asp:TextBox>
        <br />
        <br />
         <asp:Label ID="labelBairro" runat="server" Text="Bairro:"></asp:Label>
        <asp:TextBox ID="textboxBairro" runat="server" style="margin-left: 5px" Width="731px" OnTextChanged="TextBoxEmail_TextChanged"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="labelMunicipio" runat="server" Text="Municipio:"></asp:Label>
        <asp:TextBox ID="textboxMunicipio" runat="server" style="margin-left: 5px" Width="710px" OnTextChanged="TextBoxEmail_TextChanged"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="labelEstado" runat="server" Text="Estado:"></asp:Label>
        <asp:TextBox ID="textboxEstado" runat="server" style="margin-left: 5px" Width="731px" OnTextChanged="TextBoxEmail_TextChanged"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="labelPais" runat="server" Text="Pais:"></asp:Label>
        <asp:TextBox ID="textboxPais" runat="server" style="margin-left: 5px" Width="746px" OnTextChanged="TextBoxEmail_TextChanged"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="labelCEP" runat="server" Text="CEP:"></asp:Label>
        <asp:TextBox ID="textboxCEP" runat="server" style="margin-left: 5px" Width="743px" OnTextChanged="TextBoxEmail_TextChanged"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BtEnviar" runat="server" Text="Enviar" OnClick="BtEnviar_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:Button ID="BtLimpar" runat="server" OnClick="Button2_Click" Text="Limpar" />
        
    </div>
    </form>
</body>
</html>
