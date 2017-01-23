<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="d"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<!DOCTYPE html>
<html>


<!-- Mirrored from myadmin-html.axiomthemes.com/basic-profile.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 03 Jun 2016 12:08:29 GMT -->
<head>
<!-- Meta and Title -->
<meta charset="utf-8">
<title>Gestion de Cabinet du Medecin</title>
<meta name="keywords"
	content="HTML5, Bootstrap 3, Admin Template, UI Theme" />
<meta name="description"
	content="Alliance - A Responsive HTML5 Admin UI Framework">
<meta name="author" content="ThemeREX">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Fonts -->
<link
	href='https://fonts.googleapis.com/css?family=Ubuntu:400,300,300italic,400italic,500,500italic,700,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Poppins:400,300,500,600,700'
	rel='stylesheet' type='text/css'>

<!-- CSS - theme -->
<link rel="stylesheet" type="text/css"
	href="assets/skin/default_skin/less/theme.min.css">

<!-- CSS - allcp forms -->
<link rel="stylesheet" type="text/css"
	href="assets/allcp/forms/css/forms.css">

<!-- Favicon -->
<link rel="shortcut icon" href="assets/img/favicon.png">

<!-- Plugins -->
<link rel="stylesheet" type="text/css"
	href="assets/js/utility/malihu-custom-scrollbar-plugin-master/jquery.mCustomScrollbar.min.css">

<!-- IE8 HTML5 support -->
<!--[if lt IE 9]>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.2/html5shiv.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body class="basic-profile">


	<!-- Body Wrap -->
	<div id="main">

		<!-- Header  -->
		<header class="navbar navbar-fixed-top">
		<div class="navbar-logo-wrapper dark bg-dark">
			<a class="navbar-logo-image" href="index-2.html"> <img
				src="assets/img/logo.png" alt="" class="sb-l-o-logo"> <img
				src="assets/img/logo_small.png" alt="" class="sb-l-m-logo">
			</a>
		</div>
		<span id="sidebar_left_toggle"
			class="ad ad-lines navbar-nav navbar-left"></span>

		
		<ul class="nav navbar-nav navbar-right">
			<li class="dropdown dropdown-fuse"><a href="#"
				class="dropdown-toggle mln" data-toggle="dropdown"> <span
					class="hidden-xs hidden-sm"><span class="name"><d:out value='${Noms}'/></span></span> <span class="fa fa-caret-down hidden-xs hidden-sm"></span>
					<span class="profile-online"> <img
						src="assets/img/avatars/patient.jpg" alt="avatar">
				</span>
			</a>
				<ul class="dropdown-menu list-group keep-dropdown w190" role="menu">
					<li class="list-group-item"><a href="#"> Profile <span
							class="fa fa-user"></span>
					</a></li>
					<li class="list-group-item"><a href="#"> Settings <span
							class="fa fa-cog"></span>
					</a></li>
					<li class="list-group-item"><a href="#"> My Calendar <span
							class="fa fa-calendar-o"></span>
					</a></li>
					<li class="divider"></li>
					<li class="list-group-item"><a href="#"> Help <span
							class="fa fa-question-circle"></span>
					</a></li>
					<li class="list-group-item"><a href="#"> Logout <span
							class="fa fa-sign-out"></span>
					</a></li>
				</ul></li>
		</ul>
		<ul class="nav navbar-nav navbar-right mr25">
			<li class="dropdown dropdown-fuse ml20">
			</li>
			<li class="dropdown dropdown-fuse">
			</li>
		</ul>
		
		</header>
		<!-- /Header  -->

		<!-- Sidebar  -->
		<aside id="sidebar_left" class="nano nano-light affix"> <!-- Sidebar Left Wrapper  -->
		<div class="sidebar-left-content nano-content">

			<!-- Sidebar Header -->
			<header class="sidebar-header"> <!-- Sidebar - Author -->
			<div class="sidebar-widget author-widget" style="margin-top: 15%;">
				<div class="media">
					<a class="media-left profile-online" href="#"> <img
						src="assets/img/avatars/patient.jpg" class="img-responsive"
						alt="">
					</a>

					<div class="media-body">
						<div>Welcome</div>
						<div class="media-author"><d:out value='${Noms}'/></div>
					</div>
				</div>
			</div>

			</header>
			<!-- /Sidebar Header -->

			<!-- Sidebar Menu  -->
			
			  <ul class="nav sidebar-menu">
                        <li><a class="accordion-toggle" href="#"> <span class="sidebar-title">Rendez-vous</span> <span class="caret"></span>
                         <span class="sb-menu-icon fa fa-calendar"></span>
                </a>
                    <ul class="nav sub-nav">
                        <li><a href="http://localhost:5050/Cabinet_medecin/ListeRendezVousControleur">Lister Rendez-vous </a>
                        </li>
                        <li><a href="http://localhost:5050/Cabinet_medecin/ListeRendezVousControleur"> Ajouter Rendez-vous </a></li>
                        <li><a href="#"> Modifier
                                Rendez-vous </a></li>
                        <li><a href="#"> Supprimer Rendez-vous </a></li>

                    </ul></li>
                
                
                
                <li><a class="accordion-toggle" href="#"> <span class="sidebar-title">Inscription</span> <span class="caret"></span> <span class="sb-menu-icon fa fa-list-ul"></span>
                </a>
                    <ul class="nav sub-nav">
                        <li><a href="ListeFichierPatient.jsp"> Lister Inscription</a>
                        </li>
                        <li><a href="AddFichierPatient.jsp"> Ajouter Inscription</a></li>
                        <li><a href="ModifierFichierPatient.jsp"> Modifier Inscription</a></li>
                        <li><a href="ListeFichierPatient.jsp"> Supprimer Inscription </a></li>

                    </ul></li>

            </ul>
			<!-- /Sidebar Menu  -->

		</div>
		<!-- /Sidebar Left Wrapper  --> </aside>
		<!-- /Sidebar -->

		<!-- Main Wrapper -->
		<section id="content_wrapper"> <!-- Topbar --> <header
			id="topbar" class="alt">
		<div class="topbar-left">
			<ol class="breadcrumb">
				<li class="breadcrumb-icon"><a href="index-2.html"> <span
						class="fa fa-home"></span>
				</a></li>
				<li class="breadcrumb-link"><a href="index-2.html">Home</a></li>
				<li class="breadcrumb-current-item"></li>
			</ol>
		</div>
		</header> <!-- /Topbar --> <!-- Content --> 
		<section id="content" class="animated fadeIn">
	</div>

	</section>
	<!-- /Content -->

	</section>


	</div>
	<!-- /Body Wrap  -->

	<!-- Scripts -->
	
	
	
	
	
	

	<!-- jQuery -->
	<script src="assets/js/jquery/jquery-1.11.3.min.js"></script>
	<script src="assets/js/jquery/jquery_ui/jquery-ui.min.js"></script>

	<!-- HighCharts Plugin -->
	<script src="assets/js/plugins/highcharts/highcharts.js"></script>

	<!-- Theme Scripts -->
	<script src="assets/js/utility/utility.js"></script>
	<script
		src="assets/js/utility/malihu-custom-scrollbar-plugin-master/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="assets/js/demo/demo.js"></script>
	<script src="assets/js/main.js"></script>
	<script src="assets/js/demo/widgets_sidebar.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function() {

			"use strict";

			// Init Theme Core
			Core.init();

			// Init Demo JS
			Demo.init();

		});
	</script>
	<!-- /Scripts -->

</body>


<!-- Mirrored from myadmin-html.axiomthemes.com/basic-profile.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 03 Jun 2016 12:08:29 GMT -->
</html>


</body>
</html>