<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>


<!-- Mirrored from myadmin-html.axiomthemes.com/utility-register.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 03 Jun 2016 12:08:28 GMT -->
<head>
    <!-- Meta and Title -->
    <meta charset="utf-8">
    <title>myAdmin - A Responsive Bootstrap 3 Admin Dashboard Template</title>
    <meta name="keywords" content="HTML5, Bootstrap 3, Admin Template, UI Theme"/>
    <meta name="description" content="Alliance - A Responsive HTML5 Admin UI Framework">
    <meta name="author" content="ThemeREX">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Ubuntu:400,300,300italic,400italic,500,500italic,700,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Poppins:400,300,500,600,700' rel='stylesheet' type='text/css'>

    <!-- CSS - theme -->
    <link rel="stylesheet" type="text/css" href="assets/skin/default_skin/less/theme.min.css">

    <!-- CSS - allcp forms -->
    <link rel="stylesheet" type="text/css" href="assets/allcp/forms/css/forms.css">

    <!-- Favicon -->
    <link rel="shortcut icon" href="assets/img/favicon.png">

    <!-- Plugins -->
    <link rel="stylesheet" type="text/css" href="assets/js/utility/malihu-custom-scrollbar-plugin-master/jquery.mCustomScrollbar.min.css">

    <!-- IE8 HTML5 support -->
    <!--[if lt IE 9]>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.2/html5shiv.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body class="utility-page sb-l-c sb-r-c">


<!-- Body Wrap -->
<div id="main" class="animated fadeIn">

    <!-- Main Wrapper -->
    <section id="content_wrapper">

        <div id="canvas-wrapper">
            <canvas id="demo-canvas"></canvas>
        </div>

        <!-- Content -->
        <section id="content" class="">

            <!-- Registration -->
            <div class="allcp-form theme-primary mw600" id="register">
                <div class="bg-primary mw600 text-center mb20 br3 pt15 pb10">
                    <img src="assets/img/logo.png" alt=""/>
                </div>
                <div class="panel panel-primary">
            
                    <form method="GET">
            <label>Nom : </label>	<input type="text" name="nom" class="form-control" placeholder="Nom" required/><br />
	<label>	 Prenom : </label><input name="prenom" type="text" class="form-control" placeholder="Prenom" required/><br /> 
	<label>	cin : </label><input name="cin" type="text" class="form-control" placeholder="cin" required/><br />

	
	<label>	Pays: </label><input name="pays" type="text" class="form-control" placeholder="Exmple:doha@gmail.com" required/><br />
		<label>mail : </label><input name="mail" type="text" class="form-control" placeholder="Exmple:doha@gmail.com" required/><br />
	
	<label>	Date De Naissance : </label><input name="date_naiss" type="text" class="form-control" placeholder="dd-mm-yyyy" required /><br />
	<label>	etatcivil : </label>
	<select name="etatcivil" required class="form-control">
		<option  selected>Selected Etat Civil</option>
  		<option value="marie">marié(e)</option> 
 		<option value="veuve">veuve</option>
   		<option value="divorce">divorcé(e)</option> 
 	    <option value="Celibataire">Célibataire</option>
	</select><br /> 
	<label>	ville :</label> <input name="ville" type="text" class="form-control" placeholder="Ville" required /><br />
	<label>	Code Postal: </label><input name="code_postal" type="text" class="form-control" placeholder="Nationnalite" required /><br />
	<label>	Lieu: </label><input name="lieu" type="text" class="form-control" placeholder="Nationnalite" required /><br />
	
	<label>	nationnalite: </label><input name="nationnalite" type="text" class="form-control" placeholder="Nationnalite" required /><br />
	<label>	Telephone : </label><input name="tel" type="text" class="form-control" placeholder="Telephone" required /><br /> 
	<label>	Maladie : </label><input name="maladie" type="text" class="form-control" placeholder="Maladie" required /><br /><br/>
	<label>	Medicament :</label> <input name="medicament" type="text" class="form-control" placeholder="Medicament" required /><br /> 
  	<label>Sex :</label>
	<input id="male" type="radio" name="sex" value="homme"> 
	<label for="male" style="color:#808080;font-family: cursive;">Homme</label> 
	<input id="female" type="radio" name="sex" value="female"> <label for="female" style="color:#808080;font-family: cursive;">Femme</label>
	<br/>
          <label>	Login : </label><input name="login" type="text" class="form-control" placeholder="Telephone" required /><br /> 
	<label>	Mot de Passe : </label><input name="password" type="text" class="form-control" placeholder="Maladie" required /><br /><br/>
	                      <div class="pull-right">
                                    <button type="submit" class="btn btn-bordered btn-primary" style="margin-top: -28%; margin-left: 13%;">Inscription
                                    </button>
                                </div>
                            </div>
                            <!-- /section -->

                        </div>
                      
                    </form>
 

<!-- jQuery -->
<script src="assets/js/jquery/jquery-1.11.3.min.js"></script>
<script src="assets/js/jquery/jquery_ui/jquery-ui.min.js"></script>

<!-- CanvasBG JS -->
<script src="assets/js/plugins/canvasbg/canvasbg.js"></script>

<!-- Theme Scripts -->
<script src="assets/js/utility/utility.js"></script>
<script src="assets/js/utility/malihu-custom-scrollbar-plugin-master/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="assets/js/demo/demo.js"></script>
<script src="assets/js/main.js"></script>

<!-- Page JS -->
<script type="text/javascript">
    jQuery(document).ready(function () {
        "use strict";
        // Init Theme Core
        Core.init();

        // Init Demo JS
        Demo.init();

        // Init CanvasBG
        CanvasBG.init({
            Loc: {
                x: window.innerWidth / 5,
                y: window.innerHeight / 10
            }
        });
    });
</script>

<!-- /Scripts -->

</body>


<!-- Mirrored from myadmin-html.axiomthemes.com/utility-register.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 03 Jun 2016 12:08:28 GMT -->
</html>
