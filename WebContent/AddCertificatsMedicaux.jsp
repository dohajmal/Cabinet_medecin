<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="d"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="slidebarD.jsp"%>
		<section id="content" class="table-layout animated fadeIn"
		style="    width: 1331px;
    margin-top: -600px;
    margin-left: 200px;">
	<!-- Column Center -->
	<div class="chute chute-center">

		<!-- Products Status Table -->
		<div class="row">
			<div class="col-xs-12">
				<div class="panel">
					<div class="panel-heading">
						<span class="panel-title hidden-xs" style="color:#10cfbd;">Add Certificat Medicaux</span>
					</div>
					<div class="panel-body pn">
	<form method="GET" >
	<input type="hidden" name="id_certmedc" /><br/>
	<label >	Cause:</label> <input type="text" name="cause" placeholder="Cause" required class="form-control" /><br />
	<label>Prenom Medecin:</label> <input type="text" name="nom_medecin" placeholder="Nom du Medecin" required class="form-control" /><br />
	<label>Nombre de jour :</label> <input  name="nombre_jour" type="text" required class="form-control" /><br /> 
	<label>Date Debut: </label><input name="date_debut" placeholder="DD-MM-YYYY" type="text" required class="form-control" /><br />
	<label>date Fin:</label> <input name="date_fin" type="text" placeholder="DD-MM-YYYY"  required class="form-control"/><br />
	<label>	Nom Patient:</label> <input name="nom_patient" type="text" required placeholder="Nom du Patient" class="form-control" /><br />
	<label>Prenom Patient:</label><input name="prenom_patient" type="text" required  placeholder="Prenom du Patient" class="form-control" /><br/>
	<label>Description: </label><input name="description" type="text" class="form-control" placeholder="Description" /><br />
	<label>Date de  Naissance : </label><input name="date_naiss" placeholder="DD-MM-YYYY" type="text"  required class="form-control" /><br />
	<label>Fonction Suivants:</label><div class="radio" class="form-control">
			<input id="Sauter" type="radio" name="fonction_suivant" value="Sauter"> 
				<label for="Sauter" style="color: #000;font-family: cursive;">Sauter</label> 
			<input id="Courir" type="radio" name="fonction_suivant" value="Courir"> 
				<label for="Courir" style="color: #000;font-family: cursive;">Courir</label>
			<input id="Lancer" type="radio" name="fonction_suivant" value="Lancer"> 
				<label for="Lancer" style="color: #000;font-family: cursive;">Lancer</label> 
			<input id="Rotation" type="radio" name="fonction_suivant" value="Rotation"> 
				<label for="Rotation" style="color: #000;font-family: cursive;">Rotation</label>
			<input id="Lever-porter" type="radio" name="fonction_suivant" value="Lever-porter"> 
				<label for="Lever-porter" style="color: #000;font-family: cursive;">Lever-porter</label>
		</div>
		<br/>
	<label>Type de Mouvements:</label> <div class="radio" class="form-control">
			<input id="limiter_amplitude" type="radio" name="type_mouvements" value="limiter_amplitude"> 
				<label for="limiter_amplitude" style="color: #000;font-family: cursive;">Limiter Amplitude</label> 
			<input id="limiter_charges" type="radio" name="type_mouvements" value="limiter_charges"> 
				<label for="limiter_charges" style="color: #000;font-family: cursive;">Limiter Charges</label>
			<input id="vitesse" type="radio" name="type_mouvements" value="vitesse"> 
				<label for="vitesse" style="color: #000;font-family: cursive;">Vitesse</label> 
			<input id="posture" type="radio" name="type_mouvements" value="posture"> 
				<label for="posture" style="color: #000;font-family: cursive;">Posture</label>
		</div>
		<br />
	<label>Type d'efforts:</label><div class="radio" class="form-control">
			<input id="Musculaire" type="radio" name="type_efforts" value="Musculaire"> 
				<label for="Musculaire" style="color: #000;font-family: cursive;">Musculaire</label> 
			<input id="Respiratoires" type="radio" name="type_efforts" value="Respiratoires"> 
				<label for="Respiratoires" style="color: #000;font-family: cursive;">Respiratoires</label>
			<input id="cardio-vasculaires" type="radio" name="type_efforts" value="cardio-vasculaires"> 
				<label for="cardio-vasculaires" style="color: #000;font-family: cursive;">Cardio-vasculaires</label> 
			
		</div><br/>
	<label>Capacite d'efforts:</label> <div class="radio" class="form-control">
			<input id="Intenses" type="radio" name="capacite_efforts" value="Intenses"> 
				<label for="Intenses" style="color: #000;font-family: cursive;">Intenses</label> 
			<input id="Brefs" type="radio" name="capacite_efforts" value="Brefs"> 
				<label for="Brefs" style="color: #000;font-family: cursive;">Brefs</label>
			<input id="Duree" type="radio" name="capacite_efforts" value="Duree"> 
				<label for="Duree" style="color: #000;font-family: cursive;">Duree</label> 
				</div>
			<br />
	<label>Situations d'efforts :</label> <div class="radio" class="form-control">
			<input id="activites_aquatique" type="radio" name="sitation_exercice" value="activites_aquatique"> 
				<label for="activites_aquatique" style="color: #000;font-family: cursive;">Activites en milieu aquatique</label> 
			<input id="conditions_atmospheriques" type="radio" name="sitation_exercice" value="conditions_atmospheriques"> 
				<label for="conditions_atmospheriques" style="color: #000;font-family: cursive;">Conditions Atmospheriques</label>
				</div>
<br />
	<label>Remarque : </label><input name="remarque" type="text"  required class="form-control" placeholder="Remarque" /><br />
		
		
			 <SELECT name="id_ordonnance" type="hidden" class="form-control">
			 <option value="1" selected>Selected id Ordonnance</option>
			<d:forEach items="${orddao}" var="orddao">
				<OPTION value="${orddao.id}">${orddao.id}</OPTION>
			</d:forEach>
		</SELECT>  <br />
				<button name="inscription" type="submit" class="btn btn-primary mb5" />  <i class="fa fa-floppy-o pr5"></i> Add Certificat Medicaux</button>
		

	</form>
	</div>
	</div>
	</div>
	</div>
	</div></section>
</body>
</html>