<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastrarUsuario.aspx.cs" Inherits="S_Desk.CadastrarUsuario" %>

<!DOCTYPE html>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>S-Desk Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url(images/bg-01.jpg);">
					<span class="login100-form-title-1">
						Cadastro de Usuário
					</span>
				</div>

				<form class="login100-form validate-form" runat="server">
					<div class="wrap-input100 validate-input m-b-26" data-validate="Campo Obrigatório">
						<span class="label-input100">Matrícula</span>
						<input runat="server" id="txtmat" class="input100" type="text" placeholder="Digite sua matrícula">
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-26" data-validate="Campo Obrigatório">
						<span class="label-input100">Nome</span>
						<input runat="server" id="txtnome" class="input100" type="text" placeholder="Digite seu nome">
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-26" data-validate="Campo Obrigatório">
						<span class="label-input100">E-mail</span>
						<input runat="server" id="txtemail" class="input100" type="text" placeholder="Digite seu e-mail">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18" data-validate = "Campo Obrigatório">
						<span class="label-input100">Senha</span>
						<input runat="server" id="txtsenha" class="input100" type="password" name="pass" placeholder="Digite sua senha">
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-26">
						<span class="label-input100">Cargo</span>
						<input runat="server" id="txtcargo" class="input100" type="text" placeholder="Digite seu cargo">
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-26" data-validate="Campo Obrigatório">
						<span class="label-input100">Setor</span>
						<select class="input100" id="sDepto" runat="server" style= "height:40px"/>
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-26" data-validate="Campo Obrigatório">
						<span class="label-input100">Grupo</span>
						<select class="input100" id="sGrupo" runat="server" style="height:40px"/>
						<span class="focus-input100"></span>
					</div>
					<div class="container-login100-form-btn m-t-17">
						<asp:Button runat="server" Text="Cadastrar" class="login100-form-btn" ID="btCadastrar" OnClick="btCadastrar_Click"/>
					</div>
				</form>
			</div>
		</div>
	</div>
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>
