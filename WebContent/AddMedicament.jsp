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
<section id="content" class="table-layout animated fadeIn" style="width: 1331px;margin-top: -630px;margin-left: 251px;">
	<div class="chute chute-center">
		<div class="row">
			<div class="col-xs-12" style="width: 81%;">
				<div class="panel">
					<div class="panel-heading">
						<span class="panel-title hidden-xs" style="color:#10cfbd;">Add Medicament</span>
					</div>
					<div class="panel-body pn">
	<form method="GET" >
	  <div class="form-group">
    <label>
		Nom du Medicament :</label> <input type="text" name="nom_medicament" class="form-control" placeholder="Nom du Medicament" required /><br />
		</div>
	<div class="form-group">
    <label>Num Ordonnance: </label>
    <SELECT name="id_ordonnance" class="form-control">
	<option value="1" selected>Selected id Ordonnance</option>
	<d:forEach items="${orddao}" var="orddao">
	<OPTION value="${orddao.id}">${orddao.id}</OPTION>
	</d:forEach>
	</SELECT>
	<br />
	</div>

	</form>

		<button name="inscription" type="submit" class="btn btn-primary mb5" onclick="document.location='http://localhost:5050/Cabinet_medecin/ListeMedicamentControlleur'"/>  <i class="fa fa-floppy-o pr5"></i> Add Medicament</button>

</div>
</div>
</div>
</div>
</div>
</section>



</body>
</html>