<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="d"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
						<span class="panel-title hidden-xs">Liste des Medicaments</span>
					</div>
					<div class="panel-body pn">
						<div class="table-responsive">
							<table class="table allcp-form theme-warning tc-checkbox-1 fs13">
								<thead>
									<tr class="primary">
										<th class="">Id</th>
										<th class="">Nom du Medicament</th>
										<th class="text-right">Actions</th>
									</tr>
								</thead>
								<tbody>

									<d:forEach items="${Medicament}" var="medic">

										<tr>
											<td class="">${medic.id}</td>
											<td class="">${medic.nomMedicament}</td>
											<td class="text-right">
												<div class="btn-group text-right">
													<button type="button"
														class="btn btn-success br2 btn-xs fs12 dropdown-toggle"
														data-toggle="dropdown" aria-expanded="false">
														Actions <span class="caret ml5"></span>
													</button>
													<ul class="dropdown-menu" role="menu">
														<li><a href="ModifierMedicamentControlleur?id=${medic.id}">Modifier</a></li>
														<li><a
															href="SupprimierMedicamentControlleur?id=${medic.id}"
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
				<button class="btn btn-primary mb5" type="button" onclick="document.location='http://localhost:5050/Cabinet_medecin/AddMedicamentControlleur'">
                                    <i class="fa fa-floppy-o pr5"></i> Add Medicament
                                </button>
			</div>
		</div>
	</section>






</body>
</html>