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
    margin-left:200px;">
	<!-- Column Center -->
	<div class="chute chute-center">

		<!-- Products Status Table -->
		<div class="row">
			<div class="col-xs-12">
				<div class="panel">
					<div class="panel-heading">
						<span class="panel-title hidden-xs">Liste Certificat Medicaux</span>
					</div>
					<div class="panel-body pn">
						<div class="table-responsive">
							<table class="table allcp-form theme-warning tc-checkbox-1 fs13">
								<thead>
									<tr class="primary">
										<th class="">Id</th>
										<th class="">Cause</th>
										<th class="">Nom Medecin</th>
										<th class="">Nbre de jour</th>
										<th class="">Date debut</th>
										<th class="text-right">Date Fin</th>
										<th class="text-right">Nom Patient</th>
										<th class="text-right">Prenom Patient</th>
										<th class="text-right">Desciption</th>
										<th class="">Date Naissance</th>
										<th class="text-right">Fonction Suivant</th>
										<th class="text-right">Type Mouvements</th>
										<th class="text-right">Type Efforts</th>
										<th class="text-right">Capcite efforts</th>
										<th class="">Situation d'exercice</th>
										<th class="">Remarque</th>
										<th class="text-right">Actions</th>
									</tr>
								</thead>
								<tbody>

									<d:forEach items="${certmeddao}" var="certmeddao">

										<tr>
											<td class="">${certmeddao.id}</td>
											<td class="">${certmeddao.cause}</td>
											<td class="">${certmeddao.nomMedecin}</td>
											<td class="">${certmeddao.nbreJour}</td>
											<td class="">${certmeddao.dateDebut}</td>
											<td class="">${certmeddao.dateFin}</td>
											<td class="">${certmeddao.nomPatient}</td>
											<td class="">${certmeddao.prenomPatient}</td>
											<td class="">${certmeddao.description}</td>
											<td class="">${certmeddao.dataNaiss}</td>
											<td class="">${certmeddao.fonctionSuivant}</td>
											<td class="">${certmeddao.typeMouvements}</td>
											<td class="">${certmeddao.typeEfforts}</td>
											<td class="">${certmeddao.capaciteEfforts}</td>
											<td class="">${certmeddao.sitationExercice}</td>
											<td class="">${certmeddao.remarque}</td>
											
											
											<td class="text-right">
												<div class="btn-group text-right">
													<button type="button"
														class="btn btn-success br2 btn-xs fs12 dropdown-toggle"
														data-toggle="dropdown" aria-expanded="false">
														Actions <span class="caret ml5"></span>
													</button>
													<ul class="dropdown-menu" role="menu">
														<li><a href="ModifierCertificatsMedicauxControlleur?id=${certmeddao.id}">Modifier</a></li>
														<li><a
															href="SupprimierCertificatsMedicauxControlleur?id=${certmeddao.id}"
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
					<button class="btn btn-primary mb5" type="button"  onClick="document.location='http://localhost:5050/Cabinet_medecin/AddCertificatsmedicauxControlleur'">
                                    <i class="fa fa-floppy-o pr5"></i> Add Certificats Medicaux
                                </button>
			</div>
		</div>
	</section>




</body>
</html>