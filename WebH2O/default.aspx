<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebH2O.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="assets/imagens/icone.png" rel="icon" />
    <title>H2O Web</title>
    <link href="/assets/css/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="/css/bootstrap.min.css" />

    <style>
        #background_h2o {
            background-image: url('/assets/imagens/logo.jpeg');
            padding-top: 250px;
            background-attachment: relative;
            background-position: center center;
            min-height: 700px;
            width: 100%;
            -webkit-background-size: 100%;
            -moz-background-size: 100%;
            -o-background-size: 100%;
            background-size: 100%;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
        }

        #section-semestre1, #section-semestre2, #section-semestre3 {
            margin-bottom: 20px;
            margin-top: 20px;
        }

        #section-semestre2 {
            background-color: #87CEEB;
        }

        body {
            font-family: 'Lobster', cursive;
        }

        p {
            font-size: 110%;
            text-align: justify;
        }

        h1 {
            color: #8b2500;
        }

        #rodape {
            padding-bottom: 10px;
            padding-top: 10px;
            background: #2f2f2f;
            color: white;
        }
    </style>
</head>
<body>

    <!-- ********** HEADER ********** -->
    <nav class="navbar navbar-default navbar-fixed-top"">
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


            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="cadastro.aspx">Cadastre-se</a></li>
                    <li><a href="#about">Sobre</a></li>
                    <li><a href="produto.aspx">Produto</a></li>
                    <li><a href="#team">Nosso time</a></li>

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
    <section id="home"></section>
    <div id="background_h2o">        
    </div>


    <section id="about"></section>

    <h1 class="text-center">Sobre o Grupo H2O</h1>

    <!-- ********** WHITE SECTION - IMAGE PHONE ********** -->
    <div id="section-semestre1">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <img class="img-responsive aligncenter" src="/assets/imagens/arduino.jpeg" width="320" />
                </div>
                <div class="col-md-8">
                    <h2 class="mb">1º Semestre - ADS</h2>
                    <p>Desde agosto de 2012, São Paulo passa por uma crise no abastecimento de água. Devido à falta de chuvas, alto consumo e sistema hidráulico com certas falhas, o Paulistano começou a se preocupar com o consumo de água em suas residências. O trabalho propõe um protótipo para melhorar o controle do consumo de água residencial em tempo real, permitindo que o usuário conheça seu perfil de consumo e horas do dia em que mais se consome água. O protótipo foi criado com a utilização do arduíno na disciplina de Escritório de Projetos 1 e o grupo ficou em 1º (primeiro) lugar na Mostra de Escritório de Projetos da BandTec.</p>
                </div>
            </div>
            <!--/row -->
        </div>
        <!--/container-->
    </div>

    <!-- ********** WHITE SECTION - IMAGE PHONE ********** -->
    <div id="section-semestre2">
        <div class="container">
            <div class="row mtb">
                <div class="col-md-8">
                    <h2 class="mb">2º Semestre - ADS</h2>
                    <p>
                        A proposta desse semestre foi criar um aplicativo que utiliza as ferramentas App Inventor, Fusion Tables e a geolocalização. Dando continuidade ao projeto do semestre anterior criamos um aplicativo que torna possível o acesso fácil as informações geradas pelo protótipo que faz a medição do fluxo de água em tempo real.
Para desenvolvimento do aplicativo foi utilizado a ferramenta App Inventor, que tem como objetivo tornar possível a criação de aplicativos para o sistema operacional Android por pessoas que tenham pouco conhecimento em programação. Através de blocos é possível montar a estrutura de programação com as funcionalidades proposta para criação do aplicativo, além de seu designer.
                    </p>
                </div>

                <div class="col-md-4">
                    <img class="img-responsive aligncenter" src="/assets/imagens/smartphone.png" width="200" id="fotocelular" />
                </div>
            </div>
            <!--/row -->
        </div>
        <!--/container-->
    </div>
    <div id="section-semestre3">
        <div class="container">
            <div class="row mtb">
                <div class="col-md-4">
                    <img class="img-responsive aligncenter" src="assets/imagens/sitenotebook.jpeg" width="320" />
                </div>
                <div class="col-md-8">
                    <h2 class="mb">3º Semestre - ADS</h2>
                    <p>
                        O objetivo deste semestre é criar um projeto com solução inovadora para problema do cotidiano utilizando C# e .Net(Web Forms) acessando banco de dados, Bootstrap e Jquery, capaz de mostrar em tempo real ao usuário o consumo de água em um determinado local. 
No MVP definido no projeto será permitir ao usuário do sistema H2O o acesso aos dados gerados pelo dispositivo físico que serão enviados para o banco de dados e poderá ser acessado através da aplicação web desenvolvida pelo grupo. Através da aplicação, será permitido acesso a relatórios com os dados, acompanhamento do consumo em tempo real e opção para solicitação de compra.
                    </p>
                </div>
                <!--/row -->
            </div>
        </div>
        <!--/container -->
    </div>

    <!-- Team Section -->
    <section id="team" class="grey">
        <div class="container text-center">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h1 class="section-heading">Nosso time</h1>
                </div>
                
            </div>
            <div class="row">
                <div class="col-sm-4">
                    <div class="team-member">
                        <img src="assets/imagens/icone.png" class="img-responsive img-circle" alt="" />
                        <h4>Arthur Ramos</h4>
                        <ul class="list-inline social-buttons">
                            <li><a href="#"><i class="fa fa-linkedin"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="team-member">
                        <img src="assets/imagens/icone.png" class="img-responsive img-circle" alt="" />
                        <h4>Guilherme Tavares</h4>
                        <ul class="list-inline social-buttons">
                            <li><a href="#"><i class="fa fa-linkedin"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="team-member">
                        <img src="assets/imagens/icone.png" class="img-responsive img-circle" alt="" />
                        <h4>Vivian Silva</h4>
                        <ul class="list-inline social-buttons">
                            <li><a href="#"><i class="fa fa-linkedin"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>


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
