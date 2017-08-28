<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Produto.aspx.cs" Inherits="WebH2O.Produto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="assets/imagens/icone.png" rel="icon" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>H2O Produto</title>
    <link href="/assets/css/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="/css/bootstrap.min.css" />

    <style>
        .poster {
            padding-left: 65px;
            padding-top: 60px
        }

        #rodape {
            padding-bottom: 10px;
            padding-top: 10px;
            background: #2f2f2f;
            color: white;
        }

        body {
            font-family: 'Lobster', cursive;
        }
    </style>

</head>
<body>

    <!-- ********** HEADER ********** -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">

            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <img src="assets/imagens/H2O_logo.png" alt="Logo H2O" width="90" />
            </div>


            <div class="navbar-form navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="cadastro.aspx">Cadastre-se</a></li>
                    <li><a href="default.aspx#about">Sobre</a></li>
                    <li class="active"><a href="#">Produto</a></li>
                    <li><a href="default.aspx#team">Nosso time</a></li>

                </ul>
                <form id="signin" class="navbar-form navbar-right" role="form" runat="server">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <asp:TextBox runat="server" class="form-control" ID="txtEmail" placeholder="Digite seu email" />
                    </div>

                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                        <asp:TextBox runat="server" class="form-control" ID="txtSenha" placeholder="Digite sua senha" />
                    </div>
                    <asp:Button Text="Login" CssClass="btn btn-primary" runat="server" />
                </form>

            </div>
        </div>
    </nav>

    <!-- ********** SECTION ********** -->
    <div class="poster">
        <img src="/assets/imagens/poster.jpg" alt="Banner" width="1200" />
    </div>

    <!-- ********** FOOTER ********** -->
    <div id="rodape">
        <div class="container">
            <div class="row">
                <div class="col-md-6 centered">
                    <img src="/assets/imagens/logo_bandtec.png" alt="BandTec" width="150" />
                </div>
                <div class="col-md-6 centered">
                    <h5>h2o.bandtec@gmail.com</h5>
                </div>
            </div>
        </div>
    </div>
    <!--/F -->

</body>
</html>
