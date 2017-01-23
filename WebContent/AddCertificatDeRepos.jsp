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
    margin-top: -630px;
    margin-left: 237px">
	<!-- Column Center -->
	<div class="chute chute-center">

		<!-- Products Status Table -->
		<div class="row">
			<div class="col-xs-12" style="width: 83%;">
				<div class="panel">
					<div class="panel-heading">
						<span class="panel-title hidden-xs" style="color:#10cfbd;">Add Certificat De Repos</span>
					</div>
					<div class="panel-body pn">
	<form method="GET" >
	<input type="hidden" name="id_certrepos" /><br/>
	<label>	Nom Medecin:</label> <input type="text" name="nom_medecin" placeholder="Nom De Medecin" required  class="form-control"/><br />
		<label> Nombre de jour :</label> <input name="nombre_jour" type="text" required placeholder="Nombre de Jour" class="form-control" /><br /> 
	<label>	Date de  Debut: </label><input name="date_debut" type="text" required placeholder="dd-mm-yyyy" class="form-control" /><br />
	<label>	date de Fin: </label><input name="date_fin" type="text" placeholder="dd-mm-yyyy" required  class="form-control" /><br />

		<label>Nom Patient:</label> <input name="nom_patient" type="text" placeholder="Nom De Patient" required  class="form-control" /><br />
		<label>Prenom Patient:</label><input name="prenom_patient" type="text" placeholder="Prenom De Patient" required  class="form-control" /><br/>
	<label>	Description: </label><input name="description" type="text"  class="form-control" placeholder="Description" /><br />
	<label>	date Des Naissance :</label> <input name="date_naiss" type="date"  required  class="form-control" placeholder="dd-mm-yyyy" /><br />
			 <SELECT name="id_ordonnance" type="hidden" class="form-control">
			 <option value="1" selected >Selected id Ordonnance</option>
			<d:forEach items="${orddao}" var="orddao">
				<OPTION value="${orddao.id}">${orddao.id}</OPTION>
			</d:forEach>
		</SELECT>  <br /> 
		<button name="inscription" type="submit" class="btn btn-primary mb5" />  <i class="fa fa-floppy-o pr5"></i> Add Certificat De Repos</button>

	</form>
	</div>
	</div>
	</div>
	</div>
	</div></section>
</body>
</html>