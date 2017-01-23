<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="d"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>


<!-- Mirrored from myadmin-html.axiomthemes.com/basic-calendar.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 03 Jun 2016 12:07:31 GMT -->
<head>
    <!-- Meta and Title -->
    <meta charset="utf-8">
    <title>myAdmin - A Responsive Bootstrap 3 Admin Dashboard Template</title>
    <meta name="keywords" content="HTML5, Bootstrap 3, Admin Template, UI Theme"/>
    <meta name="description" content="Alliance - A Responsive HTML5 Admin UI Framework">
    <meta name="author" content="ThemeREX">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Poppins:400,300,500,600,700' rel='stylesheet' type='text/css'>

    <!-- CSS - plugins -->
    <link rel="stylesheet" type="text/css" href="assets/js/plugins/fullcalendar/fullcalendar.min.css" media="screen">
    <link rel="stylesheet" type="text/css" href="assets/js/plugins/magnific/magnific-popup.css">

    <!-- CSS - theme -->
    <link rel="stylesheet" type="text/css" href="assets/skin/default_skin/less/theme.min.css">

    <!-- Plugins -->
    <link rel="stylesheet" type="text/css" href="assets/js/utility/malihu-custom-scrollbar-plugin-master/jquery.mCustomScrollbar.min.css">

    <!-- CSS - allcp forms -->
    <link rel="stylesheet" type="text/css" href="assets/allcp/forms/css/forms.css">

    <!-- Favicon -->
    <link rel="shortcut icon" href="assets/img/favicon.png">

    <!-- IE8 HTML5 support -->
    <!--[if lt IE 9]>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.2/html5shiv.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    
    <script type="text/javascript">
    
    
    $(document).ready(function(){
        $("#button").click(function(){
          deb=   $('#deb').val();
          fin=  $('#fin').val();
          
          deb1= parseInt(deb.substring(0, 2));
          fin1=parseInt(fin.substring(0, 2));
          
          if(fin1>deb1){
        	  
        	  alert(deb1+" < "+fin1);
        	  res=true;
          }
          if (fin1>deb1){
  
        	  res=false;
          }
          if(fin1==deb1){
        	 
        	  deb2= parseInt(deb.substring(3, 6));
              fin2=parseInt(fin.substring(3, 6));
              if(deb2>fin2){
            	  alert(deb2+" > "+fin2);
            	  res=true;
              }else{
            	  alert(fin2+" < "+deb2);
            	  res=false;
              }
          }
          
          alert(res);

        });
    });
    
    </script>

</head>

<body class="basic-calendar">

<!-- Body Wrap -->
<div id="main">

    <!-- Header  -->
    	<header class="navbar navbar-fixed-top">
		<div class="navbar-logo-wrapper dark bg-dark" style="width: 250px;">
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
					class="hidden-xs hidden-sm"><span class="name" id="n"><d:out value='${Noms}'/></span></span> <span class="fa fa-caret-down hidden-xs hidden-sm"></span>
					<span class="profile-online"> <img
						src="assets/img/avatars/profile_avatar.jpg" alt="avatar">
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
					<li class="list-group-item"><a href="#">  <span
							class="fa fa-question-circle"></span>
					</a></li>
					<li class="list-group-item"><a href="#"><label>
								<span
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
    
   <d:if test="${sessionScope.medecin.equals('medecin')}">
   
      <aside id="sidebar_left" class="nano nano-light affix" style="width: 250px;">

        <!-- Sidebar Left Wrapper  -->
        <div class="sidebar-left-content nano-content">

            <!-- Sidebar Header -->
            <header class="sidebar-header">

                <!-- Sidebar - Author -->
                <div class="sidebar-widget author-widget">
                    <div class="media">
                        <a class="media-left profile-online" href="#">
                            <img src="assets/img/avatars/docteur.jpg" class="img-responsive" alt="">
                        </a>
                       <div class="media-body">
                            <div>Welcome</div>
                            <div class="media-author"><d:out value='${Noms}'/></div>
                        </div>
                    </div>
                </div>

            </header>
            <!-- /Sidebar Header -->
<ul class="nav sidebar-menu">
						<li><a class="accordion-toggle" href="#"> <span
						class="sidebar-title">Rendez-vous</span> <span class="caret"></span>
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
				
				
				</li>
		


				<li><a class="accordion-toggle" href="#"> <span
						class="sidebar-title">Certificat De Repos</span> <span
						class="caret"></span> <span class="sb-menu-icon fa fa-list-ul"></span>
				</a>
					<ul class="nav sub-nav">
						<li><a href="http://localhost:5050/Cabinet_medecin/ListeCertificatDeRepoControlleur">Liste Certification Repos </a>
						</li>
						<li><a href="http://localhost:5050/Cabinet_medecin/AddCertificatDeRepoControlleur"> Ajouter Certification Repos </a></li>
						<li><a href="#"> Modifier Certification Repos </a></li>
						<li><a href="#"> Supprimer Certification Repos </a></li>

					</ul></li>
					
					<li><a class="accordion-toggle" href="#"> <span
						class="sidebar-title">Certificat Médicaux</span> <span
						class="caret"></span> <span class="sb-menu-icon fa fa-list-ul"></span>
				</a>
					<ul class="nav sub-nav">
						<li><a href="http://localhost:5050/Cabinet_medecin/ListeCertificatsmedicauxControlleur"> Certification Médicaux </a>
						</li>
						<li><a href="http://localhost:5050/Cabinet_medecin/AddCertificatsmedicauxControlleur"> Ajouter Certification Médicaux </a></li>
						<li><a href="#"> Modifier Certification Médicaux </a></li>
						<li><a href="#"> Supprimer Certification Médicaux </a></li>

					</ul></li>
				<li><a class="accordion-toggle" href="#"> <span
						class="sidebar-title">Fichier du Patient</span> <span
						class="caret"></span> <span class="sb-menu-icon fa fa-list-ul"></span>
				</a>
					<ul class="nav sub-nav">
						<li><a href="http://localhost:5050/Cabinet_medecin/ListeFichierPatientControlleur"> Lister Fichier Patient </a>
						</li>
						<li><a href="http://localhost:5050/Cabinet_medecin/AddFichierPatientControlleur"> Ajouter Fichier Patient </a></li>
						<li><a href="#"> Modifier Fichier Patient </a></li>
						<li><a href="#"> Supprimer Fichier Patient </a></li>

					</ul></li>
					<li><a class="accordion-toggle" href="#"> <span
						class="sidebar-title">Certificat Medicament</span> <span
						class="caret"></span> <span class="sb-menu-icon fa fa-list-ul"></span>
				</a>
					<ul class="nav sub-nav">
						<li><a href="http://localhost:5050/Cabinet_medecin/ListeMedicamentControlleur">Liste Medicament </a>
						</li>
						<li><a href="http://localhost:5050/Cabinet_medecin/AddMedicamentControlleur"> Ajouter Medicament</a></li>
						<li><a href="#"> Modifier Medicament </a></li>
						<li><a href="#"> Supprimer  Medicament </a></li>

					</ul></li>
									<li><a class="accordion-toggle" href="#"> <span
						class="sidebar-title">Consultations</span> <span class="caret"></span>
						<span class="sb-menu-icon fa fa-list-ul"></span>
				</a>
					<ul class="nav sub-nav">
						<li><a href="#"> Lister Consultation </a></li>
						<li><a href="#"> Ajouter Consultation </a></li>
						<li><a href="#"> Modifier Consultation </a>
						</li>
						<li><a href="#"> Supprimer Consultation </a>
						</li>
					</ul>
				<li><a class="accordion-toggle" href="#"> <span
						class="sidebar-title">Ordonnances</span> <span class="caret"></span>
						<span class="sb-menu-icon fa fa-list-ul"></span>
				</a>
					<ul class="nav sub-nav">
						<li><a href="#"> Lister Ordonnance </a></li>
						<li><a href="#"> Ajouter Ordonnance </a></li>
						<li><a href="#"> Modifier Ordonnance </a></li>
						<li><a href="#"> Supprimer Ordonnance </a></li>

					</ul></li>
							
					

			</ul>
			<!-- /Sidebar Menu  -->
            <!-- Sidebar Menu  -->
            <!-- /Sidebar Menu  -->

        </div>
        <!-- /Sidebar Left Wrapper  -->

    </aside>

</d:if>
   <!-- menu2 -->
   <d:if test="${sessionScope.patient.equals('patient')}">
   
    <aside id="sidebar_left" class="nano nano-light affix" style="width: 250px;">

        <!-- Sidebar Left Wrapper  -->
        <div class="sidebar-left-content nano-content">

            <!-- Sidebar Header -->
            <header class="sidebar-header">

                <!-- Sidebar - Author -->
                <div class="sidebar-widget author-widget"  style="margin-top: 17%;">
                    <div class="media">
                        <a class="media-left profile-online" href="#">
                            <img src="assets/img/avatars/profile_avatar.jpg" class="img-responsive" alt="">
                        </a>

                        <div class="media-body">
                            <div>Welcome</div>
                            <div class="media-author"><d:out value='${Noms}'/></div>
                        </div>
                    </div>
                </div>

            </header>
            <!-- /Sidebar Header -->
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
			<!-- /Sidebar Menu1  -->
           

        </div>
        <!-- /Sidebar Left Wrapper  -->

    </aside>

</d:if>

<!-- menu3 -->
  <d:if test="${sessionScope.secretaire.equals('secretaire')}">
   
    <aside id="sidebar_left" class="nano nano-light affix" style="width: 250px;">

        <!-- Sidebar Left Wrapper  -->
        <div class="sidebar-left-content nano-content">

            <!-- Sidebar Header -->
            <header class="sidebar-header">

                <!-- Sidebar - Author -->
                <div class="sidebar-widget author-widget">
                    <div class="media">
                        <a class="media-left profile-online" href="#">
                            <img src="assets/img/avatars/doha.jpg" class="img-responsive" alt="">
                        </a>

                        <div class="media-body">
                            <div>Welcome </div>
                            <div class="media-author"><d:out value='${Noms}'/> </div>
                        </div>
                    </div>
                </div>

            </header>
            <!-- /Sidebar Header -->
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
                
           
                <li><a class="accordion-toggle" href="#"> <span class="sidebar-title">Fichier du Patient</span> <span class="caret"></span> <span class="sb-menu-icon fa fa-list-ul"></span>
                </a>
                    <ul class="nav sub-nav">
                        <li><a href="http://localhost:5050/Cabinet_medecin/ListeFichierPatientControlleur"> Lister Fichier du Patient </a>
                        </li>
                        <li><a href="http://localhost:5050/Cabinet_medecin/AddFichierPatientControlleur"> Ajouter Fichier
                                du Patient </a></li>
                        <li><a href="#"> Modifier
                                Fichier du Patient </a></li>
                        <li><a href="#"> Supprimer Fichier Patient </a></li>

                    </ul></li>
                  
            </ul>
			<!-- /Sidebar Menu1  -->
           

        </div>
        <!-- /Sidebar Left Wrapper  -->

    </aside>

</d:if>
    <!-- Main Wrapper -->
    <section id="content_wrapper">


        <!-- Topbar -->
        <header id="topbar" class="alt">
            <div class="topbar-left">
                <ol class="breadcrumb">
                    <li class="breadcrumb-icon">
                        <a href="index-2.html">
                            <span class="fa fa-home"></span>
                        </a>
                    </li>
                    <li class="breadcrumb-link">
                        <a href="index-2.html">Home</a>
                    </li>
                    <li class="breadcrumb-current-item">Basic Calendar</li>
                </ol>
            </div>
        </header>
        <!-- /Topbar -->

        <!-- Content -->
   	<section id="content" class="table-layout animated fadeIn"
		style="    width: 1331px;
 
    margin-left: -28px;">
	<!-- Column Center -->
	<div class="chute chute-center">

		<!-- Products Status Table -->
		<div class="row">
			<div class="col-xs-12">
				<div class="panel">
					<div class="panel-heading">
						<span class="panel-title hidden-xs">Liste Fichier Patient</span>
					</div>
					<div class="panel-body pn">
						<div class="table-responsive">
							<table class="table allcp-form theme-warning tc-checkbox-1 fs13">
								<thead>
									<tr class="primary">
										<th class="">Id</th>
										<th class="">Nom</th>
										<th class="">Prenom</th>
										<th class="">Date Naissance</th>
										<th class="">Sex</th>
										<th class="text-right">Etat Civil</th>
										<th class="text-right">Ville</th>
										<th class="text-right">Telephone</th>
										<th class="text-right">Nationnalite</th>

										<th class="text-right">Mail</th>
										<th class="text-right">Date Dernier Rendez-vous</th>
										<th class="text-right">Maladie</th>
										<th class="text-right">Medicament</th>
										<th class="text-right">Actions</th>
									</tr>
								</thead>
								<tbody>

									<d:forEach items="${fichierpatient}" var="fp">

										<tr>
											<td class="">${fp.id}</td>
											<td class="">${fp.nomPatient}</td>
											<td class="">${fp.prenomPatient}</td>
											<td class="">${fp.dateNaissPatient}</td>
											<td class="">${fp.sexePatient}</td>
											<td class="">${fp.etatCivil}</td>
											<td class="">${fp.ville}</td>
											<td class="">${fp.telephone}</td>
											<td class="">${fp.nationnalite}</td>
											<td class="">${fp.mail}</td>
											<td class="">${fp.dateDernierRendezVous}</td>
											<td class="">${fp.maladie}</td>
											<td class="">${fp.medicament}</td>
											<td class="text-right">
												<div class="btn-group text-right">
													<button type="button"
														class="btn btn-success br2 btn-xs fs12 dropdown-toggle"
														data-toggle="dropdown" aria-expanded="false">
														Actions <span class="caret ml5"></span>
													</button>
													<ul class="dropdown-menu" role="menu">
														<li><a href="ModifierFichierPatientControlleur?id=${fp.id}">Modifier</a></li>
														<li><a
															href="SupprimierFicherPatientControlleur?id=${fp.id}"
															onclick="if(confirm('etes vous sure de supprimer?')) return true; else return false;">Supprimer</a></li>


													</ul>
												</div>
											</td>
										</tr>
									</d:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<button class="btn btn-primary mb5" type="button" onclick="document.location='http://localhost:5050/Cabinet_medecin/AddFichierPatientControlleur'">
                                    <i class="fa fa-floppy-o pr5"></i> Add Fichier d'un Patient
                                </button>
			</div>
		</div>
	</section>




        <!-- /Content -->

    </section>


</div>


<!-- jQuery -->
<script src="assets/js/jquery/jquery-1.11.3.min.js"></script>
<script src="assets/js/jquery/jquery_ui/jquery-ui.min.js"></script>

<!-- HighCharts Plugin -->
<script src="assets/js/plugins/highcharts/highcharts.js"></script>

<!-- Date/Month - Pickers -->
<script src="assets/allcp/forms/js/jquery-ui-monthpicker.min.js"></script>
<script src="assets/allcp/forms/js/jquery-ui-datepicker.min.js"></script>

<!-- Magnific Popup Plugin -->
<script src="assets/js/plugins/magnific/jquery.magnific-popup.js"></script>

<!-- FullCalendar Plugin -->
<script src="assets/js/plugins/fullcalendar/lib/moment.min.js"></script>
<script src="assets/js/plugins/fullcalendar/fullcalendar.min.js"></script>

<!-- Theme Scripts -->
<script src="assets/js/utility/utility.js"></script>
<script src="assets/js/utility/malihu-custom-scrollbar-plugin-master/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="assets/js/demo/demo.js"></script>
<script src="assets/js/main.js"></script>
<script src="assets/js/demo/widgets_sidebar.js"></script>
<script src="assets/js/pages/basic-calendar.js"></script>
<!-- /Scripts -->

</body>


<!-- Mirrored from myadmin-html.axiomthemes.com/basic-calendar.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 03 Jun 2016 12:07:31 GMT -->
</html>
