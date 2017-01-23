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
    margin-top: -630px;
    margin-left: 200px;">
	<!-- Column Center -->
	<div class="chute chute-center">

		<!-- Products Status Table -->
		<div class="row">
			<div class="col-xs-12">
				<div class="panel">
					<div class="panel-heading">
						<span class="panel-title hidden-xs" style="color:#10cfbd;">Modifier Certificat De Repos</span>
					</div>
					<div class="panel-body pn"> 
<form method="POST">
<input type="hidden" name="id_certrepos"  class="form-control" value="${certrepos.id}" /><br/>
	<label>	Prenom Medecin:</label> <input type="text"  class="form-control" name="nom_medecin" value="${certrepos.nomMedecin}" /><br />
		<label> Nombre de jour :</label> <input name="nombre_jour"  class="form-control" type="text" value="${certrepos.nbreJour}"/><br /> 
	<label>	Date Debut:</label> <input name="date_debut" type="date"  class="form-control" value="${certrepos.dateDebut}" /><br />
	<label>Date Fin:</label> <input name="date_fin" type="date"  class="form-control" value="${certrepos.dateFin}" /><br />

	<label>	Nom Patient: </label><input name="nom_patient" type="text"  class="form-control" value="${certrepos.nomPatient}" /><br />
	<label>	Prenom Patient: </label><input name="prenom_patient" type="text"  class="form-control" value="${certrepos.prenomPatient}"/><br/>
	<label>	Description:</label> <input name="description" type="text"  class="form-control"  value="${certrepos.description}"/><br />
	<label>	date De Naissance :</label> <input name="date_naiss" type="date"  class="form-control" value="${certrepos.dataNaiss}" /><br />
        <input name="id_ordonance" type="hidden"  class="form-control" value="${certrepos.ordonnance}"/><br/>

<br/>
<button name="inscription" type="submit" class="btn btn-primary mb5" />  <i class="fa fa-floppy-o pr5"></i> Modifier Certificat De Repos</button>
</form>
</div>
</div>
</div>
</div>
</div>
</section>
</body>
</html>