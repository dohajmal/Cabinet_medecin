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
    margin-top: -350px;
    margin-left: 200px;">
	<!-- Column Center -->
	<div class="chute chute-center">

		<!-- Products Status Table -->
		<div class="row">
			<div class="col-xs-12">
				<div class="panel">
					<div class="panel-heading">
						<span class="panel-title hidden-xs" style="color:#10cfbd;">Modifier Certificat Medicaux</span>
					</div>
					<div class="panel-body pn"> 
<form method="POST">
<input type="hidden" name="id_certmedic" value="${certmedc.id}" /><br/>
	<label> Cause:</label><input type="text" class="form-control" name="cause" value="${certmedc.cause}" /><br />
	<label>	Prenom Medecin:</label><input type="text" class="form-control" name="nom_medecin" value="${certmedc.nomMedecin}" /><br />
	<label>	Nombre de jour : </label><input name="nombre_jour" class="form-control" type="text" value="${certmedc.nbreJour}"/><br /> 
	<label>	Date Debut:</label>	<input name="date_debut" class="form-control" type="date" value="${certmedc.dateDebut}" /><br />
	<label>date Fin: </label><input name="date_fin" class="form-control" type="date" value="${certmedc.dateFin}" /><br />
	<label>	Nom Patient:</label><input name="nom_patient" class="form-control" type="text" value="${certmedc.nomPatient}" /><br />
	<label>	Prenom Patient:</label><input name="prenom_patient" class="form-control" type="text" value="${certmedc.prenomPatient}"/><br/>
	<label>	Description:</label><input name="description" class="form-control" type="text" value="${certmedc.description}"/><br />
	<label>	dateDe Naiss</label> :</label><input name="date_naiss" class="form-control" type="date" value="${certmedc.dataNaiss}" /><br />
    <label> Fonction Suivants:</label><input type="text" name="fonction_suivant" class="form-control" value="${certmedc.fonctionSuivant}" /><br />
	<label>	Type de Mouvements: </label><input name="type_mouvements" type="text" class="form-control" value="${certmedc.typeMouvements}"/><br /> 
	<label>	Type d'efforts: </label><input name="type_efforts" type="text" class="form-control" value="${certmedc.typeEfforts}" /><br />
	<label>	Capacite d'efforts:</label><input name="capacite_efforts" class="form-control" type="text" value="${certmedc.capaciteEfforts}" /><br />
	<label>	Situations d'efforts :</label><input name="sitation_exercice" class="form-control" type="text" value="${certmedc.sitationExercice}" /><br />
	<label>	Remarque : </label>	<input name="remarque" class="form-control" type="text" value="${certmedc.remarque}"/><br/>
	
       <input name="id_ordonance" type="hidden" value="${certrepos.ordonnance}"/><br/>

<br/>
<button name="inscription" type="submit" class="btn btn-primary mb5" />  <i class="fa fa-floppy-o pr5"></i> Modifier Certificat Medicaux</button>

</form>
</div>
</div>
</div>
</div>
</div>
</section>
</body>
</html>