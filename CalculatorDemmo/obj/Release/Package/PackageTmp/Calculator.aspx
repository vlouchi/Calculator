<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculator.aspx.cs" Inherits="CalculatorDemmo.WebForm1" %>

<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Grayscale - Start Bootstrap Theme</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Cabin:700' rel='stylesheet' type='text/css'>

    <!-- Custom styles for this template -->
    <link href="css/grayscale.min.css" rel="stylesheet">

    <style type="text/css">
        .auto-style3 {
            height: 45px;
            text-align: center;
        }
        .auto-style8 {
            width: 110px;
            height: 45px;
        }
        .auto-style9 {
            width: 110px;
        }
        .auto-style10 {
            width: 43%
        }
    </style>
    

    
</head>

<body id="page-top">

    <form id="form1" runat="server">
    <asp:ScriptManager runat="server" ID="sm">
    </asp:ScriptManager>
    <asp:updatepanel runat="server">
    <ContentTemplate>
<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <a class="navbar-brand" href="#page-top">Demo</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu <i class="fa fa-bars"></i>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="#about">Calculator</a>
            </li>
          
        </ul>
    </div>
</nav>

<!-- Intro Header -->
        <header class="masthead">
            <div class="intro-body">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 mx-auto">
                            
                            <br>
                            <br/>
                            <br>
                            <br/>
                            
                            <h1 class="brand-heading">Calculator</h1>
                            <p class="intro-text">I. F. Thufailah</p>
                            <br>
                            <br/>
                            <br>
                            <br/><br>
                            <br/><br>
                            
                            <br/>

                            <a href="#about" class="btn btn-circle page-scroll">
                                <i class="fa fa-angle-double-down animated"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
    
        </header>

<!-- About Section -->  
<section id="about" class="content-section text-center">
    <asp:Label ID="notifError" runat="server"></asp:Label>
    <table align="center" class="auto-style10">
        <tr>
            <td class="auto-style3" colspan="4">
                <asp:TextBox ID="displayBox" runat="server" Font-Bold="True" Font-Names="Courier New" Font-Size="Large" Height="100px" Width="569px" onkeydown="txtOnKeyPress(this);"></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                &nbsp;</td>
            <td class="auto-style8">
                &nbsp;</td>
            <td class="auto-style8">
                &nbsp;</td>
            <td class="auto-style8">
                
                <asp:Button ID="equal" runat="server" Text="=" Font-Bold="True" Font-Names="Courier New" Height="30px" Width="80px" OnClick="equal_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Button ID="seven" runat="server" Text="7" Font-Bold="True" Font-Names="Courier New" Height="30px" Width="80px" OnClick="seven_Click"  />
            </td>
            <td class="auto-style8">
                <asp:Button ID="eight" runat="server" Text="8" Font-Bold="True" Font-Names="Courier New" Height="30px" Width="80px" OnClick="eight_Click" />
            </td>
            <td class="auto-style8">
                <asp:Button ID="nine" runat="server" Text="9" Font-Bold="True" Font-Names="Courier New" Height="30px" Width="80px" OnClick="nine_Click" />
            </td>
            <td class="auto-style8">
                <asp:Button ID="divide" runat="server" Text="/" Font-Bold="True" Font-Names="Courier New" Height="30px" Width="80px" OnClick="divide_Click"  />
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Button ID="four" runat="server" Text="4" Font-Bold="True" Font-Names="Courier New" Height="30px" Width="80px" OnClick="four_Click" />
            </td>
            <td class="auto-style8">
                <asp:Button ID="five" runat="server" Text="5" Font-Bold="True" Font-Names="Courier New" Height="30px" Width="80px" OnClick="five_Click" />
            </td>
            <td class="auto-style8">
                <asp:Button ID="six" runat="server" Text="6" Font-Bold="True" Font-Names="Courier New" Height="30px" Width="80px" OnClick="six_Click" />
            </td>
            <td class="auto-style8">
                <asp:Button ID="times" runat="server" Text="*" Font-Bold="True" Font-Names="Courier New" Height="30px" Width="80px" OnClick="times_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Button ID="one" runat="server" Text="1" Font-Bold="True" Font-Names="Courier New" Height="30px" Width="80px" OnClick="one_Click" />
            </td>
            <td class="auto-style8">
                <asp:Button ID="two" runat="server" Text="2" Font-Bold="True" Font-Names="Courier New" Height="30px" Width="80px" OnClick="two_Click" />
            </td>
            <td class="auto-style8">
                <asp:Button ID="three" runat="server" Text="3" Font-Bold="True" Font-Names="Courier New" Height="30px" Width="80px" OnClick="three_Click" />
            </td>
            <td class="auto-style8">
                <asp:Button ID="minus" runat="server" Text="-" Font-Bold="True" Font-Names="Courier New" Height="30px" Width="80px" OnClick="minus_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Button ID="zero" runat="server" Text="0" Font-Bold="True" Font-Names="Courier New" Height="30px" Width="80px" OnClick="zero_Click" />
            </td>
            <td class="auto-style9">
                <asp:Button ID="coma" runat="server" Font-Bold="True" Height="30px" OnClick="coma_Click" Text="." Width="80px" />
            </td>
            <td class="auto-style9">
                <asp:Button ID="clear" runat="server" Text="C" Font-Bold="True" Font-Names="Courier New" Height="30px" Width="80px" OnClick="clear_Click" />
            </td>
            <td class="auto-style9">
                <asp:Button ID="plus" runat="server" Text="+" Font-Bold="True" Font-Names="Courier New" Height="30px" Width="80px" OnClick="plus_Click" />
            </td>
        </tr>
    </table>

</section>






<!-- Footer -->
<footer>
    <div class="container text-center">
        <p>Copyright &copy; Your Website 2017</p>
    </div>
</footer>

<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/popper/popper.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>

<!-- Plugin JavaScript -->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Google Maps API Key - Use your own API key to enable the map feature. More information on the Google Maps API can be found at https://developers.google.com/maps/ -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCRngKslUGJTlibkQ3FkfTxj3Xss1UlZDA&sensor=false"></script>

<!-- Custom scripts for this template -->
<script src="js/grayscale.min.js"></script>
      
        
    
    </ContentTemplate>
    </asp:updatepanel>
    </form>
  

   
</body>

</html>
