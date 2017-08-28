<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Relatorios.aspx.cs" Inherits="WebH2O.Relatorios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="assets/imagens/icone.png" rel="icon" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="/css/bootstrap.min.css" />

    <style>
        #rodape {
            padding-bottom: 10px;
            padding-top: 10px;
            background: #2f2f2f;
            color: white;
        }

    </style>
    <title>H2O Web - Consumo</title>

    <!-- ********** CHARTS ********** -->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        google.charts.load('current', { 'packages': ['bar'] });
        google.charts.setOnLoadCallback(drawStuff);

        function drawStuff() {
            var data = new google.visualization.arrayToDataTable([
                ['Mês', 'Litros'],
                <%
        for (...)
        {
        %>
                ["<%=HttpUtility.JavaScriptStringEncode(wewe) %>", <%=8787 %>],
        <%
        }

        %>
                
                ["Janeiro", 2],
                ["Fevereiro", 21],
                ["Março", 12],
                ["Abril", 10],
                ['Mario', 3]
            ]);

            var options = {
                title: 'Chess opening moves',
                width: 900,
                legend: { position: 'none' },
                chart: {
                },
                bars: 'horizontal', // Required for Material Bar Charts.
                axes: {
                    x: {
                        0: { side: 'top', label: 'Consumo de água' } // Top x-axis.
                    }
                },
                bar: { groupWidth: "90%" }
            };

            var chart = new google.charts.Bar(document.getElementById('top_x_div'));
            chart.draw(data, options);
        };
    </script>


    <!-- ********** /CHARTS ********** -->
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
                    </ul>

                    <div class="input-group">
                    </div>

                    <div class="input-group">
                    </div>
                </div>
            </div>
        </nav>
        <!-- ********** /HEADER ********** -->

        <!-- ********** CHARTS ********** -->
        <div id="top_x_div" style="width: 900px; height: 500px;"></div>
        <!-- ********** /CHARTS ********** -->

    </form>

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
