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
        <section id="content" class="table-layout animated fadeIn">

            <!-- Column Center -->
            <div class="chute chute-center ph45">

                <!-- Calendar -->
                <div id="calendar" class="events-calendar"></div>

            </div>
            <!-- /Column Center -->

            <aside class="chute chute-right chute-icon-style chute290 taphover chute-hidden-xs" data-chute-mobile="#content > .chute-center" data-chute-height="match">
                <div class="chute-icon"></div>
                <div class="chute-of-ht"></div>
                <div class="scroller-chute scroller-primary chute-fh-xs mrn">
                    <div class="fc-title-clone"></div>

                    <div class="section allcp-form theme-primary">
                        <div class="inline-mp minimal-mp center-block"></div>
                    </div>

                    <h5 class="mt25 ml5 mr40"> Rendez-Vous
                        <a id="compose-event-btn" href="#calendarManagment" data-effect="mfp-flipInY">
                            <span class="fa fa-plus-square"></span>
                        </a>
                    </h5>

                    <div id="external-events" class="bg-dotted">
 					<%-- <input type="text" id="listEvent" value="${listEvent}" />  --%>
                         <h6 class="mt30 ml10 text-muted">Detaille du Rendez Vous: </h6>
 						 <d:forEach items="${rendezdao}" var="rendezdao" varStatus="theRDV">
                          <d:forEach items="${patdao}" var="patdao" varStatus="thePAT"> 
                        <div class='fc-event fc-event-alert event-recurring' data-event="alert">
                         
                          
                            <div class="fc-event-icon">
                                <span class="fa fa-bell"></span>
                            </div>
                            
                            <div class="fc-event-desc">
                            <%--         <d:out value="${theRDV.}."/>  
                                    <d:out value="${thePAT.count}."/>  
                            
                            <p>${theRDV.index}</p>
                            <p>${thePAT.index}</p>--%>
                                <b>${rendezdao.heureDebut}-${rendezdao.heureFin}</b><b id="patNom">${patdao.nom} ${patdao.prenom}</b>
                                <b id="dateR">${rendezdao.date} </b> 
                               
                            </div>
                             <a id="compose-event-btn" href="ModifierRendezVousControlleur?id=${rendezdao.id}" data-effect="mfp-flipInY">
                       <i class="fa fa-wrench" aria-hidden="true"></i></a>
                         <a id="compose-event-btn" href="SupprimerRendezVousControlleur?id=${rendezdao.id}" onclick="if(confirm('etes vous sure de supprimer?')) return true; else return false;" data-effect="mfp-flipInY">
                         <span class="fa fa-trash" aria-hidden="true"></span></a>
                            
                        </div>
                     </d:forEach>
                            </d:forEach> 
                    </div>
                </div>
            </aside>
            <!-- /Column Left -->


        </section>
        <!-- /Content -->

    </section>


</div>
<!-- /Body Wrap  -->

<!-- Calendar Management Form -->
<div  id="calendarManagment" style="width: 41%; margin-left: 31%;">
    <div class="panel">
        <div class="panel-heading">
        <span class="panel-title">
          <i class="fa fa-pencil-square-o"></i>Ajouter Rendez-Vous
        </span>
        </div>

        <form method="GET" style="margin-left: 3%;">
             
	
<label>Date</label><input name="date1" type="text" placeholder="dd-mm-yyyy" required class="form-control" /><br />
                
  <label>Nom & prenom du Patient</label>     <SELECT name="id_patient" class="form-control">
	
	<d:forEach items="${patdao}" var="patdao">
	<OPTION value="${patdao.id}" selected>${patdao.nom} ${patdao.prenom}</OPTION>
	</d:forEach>
	</SELECT> </br>
<label>Heure Debut</label>	<input id="deb"  name="Heure_debut" type="text" placeholder="HH-SS"  class="form-control" required /><br />
<label>Heure Fin</label>	  	<input id="fin" name="Heure_fin" type="text"  placeholder="HH-SS"  class="form-control" required /><br />
          <label>Description</label>	<textarea name="description"  placeholder="Description" required class="form-control" ></textarea>
   <div class="gjh">	<button id="button" name="inscription" type="submit"  />  <i class="fa fa-floppy-o pr5"></i> Add Fichier Patient</button>
</div>
        </form>
      
    </div>
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
