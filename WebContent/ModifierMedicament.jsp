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
    margin-top: -650px;
    margin-left: 200px;">
	<!-- Column Center -->
	<div class="chute chute-center">

		<!-- Products Status Table -->
		<div class="row">
			<div class="col-xs-12">
				<div class="panel">
					<div class="panel-heading">
						<span class="panel-title hidden-xs" style="color:#10cfbd;">Modifier Medicament</span>
					</div>
					<div class="panel-body pn"> 
<form method="POST">
<input type="hidden" name="id_medicament" value="${Medic.id}" /><br/>
	<label>	 Nom Medicament : </label><input name="nom_medic" class="form-control" type="text" value="${Medic.nomMedicament}"/><br /> 

                 <input name="id_ordonnance" class="form-control" type="hidden" value="${Medic.ordonnance}"/><br/>

<br/>
<button name="inscription" type="submit" class="btn btn-primary mb5" />  <i class="fa fa-floppy-o pr5"></i> Modifier Medicament</button>
</form>
</div>
</div>
</div>
</div>
</div>
</section>
</body>
</html>