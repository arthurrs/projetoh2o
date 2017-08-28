<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastro.aspx.cs" Inherits="WebH2O.cadastro" %>

<!DOCTYPE html>

<html id="htmlcadastro" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="assets/imagens/icone.png" rel="icon" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>H2O Cadastro</title>
    <link href="/assets/css/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="/css/bootstrap.min.css" />

    <style type="text/css">
        .painel-des {
            opacity: 0.35;
        }

        body {
            font-family: 'Lobster', cursive;
        }

        #htmlcadastro {
            background-size: cover;
            overflow-y: hidden;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- ********** HEADER ********** -->
        <nav class="navbar navbar-default">
            <div class="container-fluid">

                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="default.aspx">
                        <img src="assets/imagens/H2O_logo.png" alt="Logo H2O" width="90" /></a>
                </div>


                <div class="navbar-form navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="cadastro.aspx">Cadastre-se</a></li>
                        <li><a href="default.aspx#about">Sobre</a></li>
                        <li><a href="produto.aspx">Produto</a></li>
                        <li><a href="default.aspx#team">Nosso time</a></li>

                    </ul>

                    <div class="input-group">
                    </div>

                    <div class="input-group">
                    </div>



                </div>
            </div>
        </nav>

        <!-- ********** SECTION ********** -->
        <main class="container-fluid">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4" id="coluna1" runat="server">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">Informações Pessoais</h3>
                            </div>
                            <div class="panel-body">
                                <div class="form-group">
                                    <label for="boxID">ID DO LEITOR</label>
                                    <asp:TextBox CssClass="form-control" ID="boxID" runat="server" placeholder="Ex: Número com 6 digitos" />
                                </div>

                                <div class="form-group">
                                    <label for="boxNome">NOME</label>
                                    <asp:TextBox CssClass="form-control" ID="boxNome" runat="server" placeholder="Ex: João da Silva" />
                                </div>

                                <div class="form-group">
                                    <label for="boxCpf">CPF</label>
                                    <asp:TextBox CssClass="form-control" ID="boxCpf" runat="server" placeholder="Ex: 14789658954" />
                                </div>

                                <div class="form-group">
                                    <label for="boxRg">RG</label>
                                    <asp:TextBox CssClass="form-control" ID="boxRg" runat="server" placeholder="Ex: 654716241" />
                                </div>

                                <asp:Button CssClass="btn btn-lg btn-success btn-block" Text="Validar" runat="server" OnClick="ValidarNome" ID="btnPasso1" />

                                <asp:Panel ID="panelErroUsuario" runat="server" Visible="false" CssClass="alert alert-danger">
                                    <asp:Label ID="errousuario" Text="" runat="server" />
                                </asp:Panel>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 painel-des" runat="server" id="coluna2">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">Endereço</h3>
                            </div>
                            <div class="panel-body">

                                <div class="form-group">
                                    <label for="boxLogradouro">LOGRADOURO</label>
                                    <asp:TextBox Enabled="false" CssClass="form-control" ID="boxLogradouro" runat="server" placeholder="Ex: Alameda das castanheiras" />
                                </div>

                                <div class="form-group">
                                    <label for="boxNumero">NUMERO</label>
                                    <asp:TextBox Enabled="false" CssClass="form-control" ID="boxNumero" runat="server" placeholder="Ex: 175" />
                                </div>

                                <div class="form-group">
                                    <label for="boxComplemento">COMPLEMENTO</label>
                                    <asp:TextBox Enabled="false" CssClass="form-control" ID="boxComplemento" runat="server" placeholder="Ex: Apartamento 31" />
                                </div>

                                <div class="form-group">
                                    <label for="boxBairro">BAIRRO</label>
                                    <asp:TextBox Enabled="false" CssClass="form-control" ID="boxBairro" runat="server" placeholder="Ex: Itaquera" />
                                </div>

                                <div class="form-group">
                                    <label for="boxCidade">CIDADE</label>
                                    <asp:TextBox Enabled="false" CssClass="form-control" ID="boxCidade" runat="server" placeholder="Ex: São Paulo" />
                                </div>

                                <div class="form-group">
                                    <label for="boxCep">CEP</label>
                                    <asp:TextBox Enabled="false" CssClass="form-control" ID="boxCep" runat="server" placeholder="Ex: 08547357" />
                                </div>

                                <asp:Button Enabled="false" CssClass="btn btn-lg btn-success btn-block" Text="Validar" runat="server" OnClick="ValidarEndereço" ID="Button1" />

                                <asp:Panel ID="panelErroEndereco" runat="server" Visible="false" CssClass="alert alert-danger">
                                    <asp:Label ID="erroendereco" Text="" runat="server" />
                                </asp:Panel>
                            </div>
                        </div>
                    </div>


                    <div class="col-sm-4 painel-des" runat="server" id="coluna3">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">Dados de Login</h3>
                            </div>
                            <div class="panel-body">

                                <div class="form-group">
                                    <label for="boxEmail">E-MAIL</label>
                                    <asp:TextBox Enabled="false" CssClass="form-control" ID="boxEmail" runat="server" placeholder="Ex: usuario@h2o.com" />
                                </div>

                                <div class="form-group">
                                    <label for="boxConfirmarEmail">CONFIRMAR E-MAIL</label>
                                    <asp:TextBox Enabled="false" CssClass="form-control" ID="boxConfEmail" runat="server" placeholder="Ex: usuario@h2o.com" />
                                </div>

                                <div class="form-group">
                                    <label for="boxSenha">SENHA *Senha com 6 digitos</label>
                                    <asp:TextBox TextMode="Password" Enabled="false" CssClass="form-control" ID="boxSenha" runat="server" placeholder="Ex: 123456" />
                                </div>

                                <div class="form-group">
                                    <label for="boxConfirmarSenha">CONFIRMAR SENHA</label>
                                    <asp:TextBox TextMode="Password" Enabled="false" CssClass="form-control" ID="boxConfSenha" runat="server" placeholder="Ex: 123456" />
                                </div>

                                <asp:Button Enabled="false" CssClass="btn btn-lg btn-success btn-block" Text="Validar" runat="server" OnClick="Cadastrar" ID="Button2" />

                                <asp:Panel ID="panelErroInfo" runat="server" Visible="false" CssClass="alert alert-danger">
                                    <asp:Label ID="erroinfo" Text="" runat="server" />
                                </asp:Panel>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>

    </form>



    <script type="text/javascript" src="/js/jquery.min.js"></script>
    <script type="text/javascript" src="/js/bootstrap.min.js"></script>

</body>
</html>
