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
						<span class="panel-title hidden-xs">Liste Certificat De Repos</span>
					</div>
					<div class="panel-body pn">
						<div class="table-responsive">
							<table class="table allcp-form theme-warning tc-checkbox-1 fs13">
								<thead>
									<tr class="primary">
										<th class="">Id</th>
										<th class="">Nom Medecin</th>
										<th class="">Nbre de jour</th>
										
										<th class="">Date debut</th>
										<th class="text-right">Date Fin</th>
										<th class="text-right">Nom Patient</th>
										<th class="text-right">Prenom Patient</th>
										<th class="text-right">Desciption</th>
										<th class="">Date Naissance</th>
										<th class="text-right">Actions</th>
									</tr>
								</thead>
								<tbody>

									<d:forEach items="${certdao}" var="certdao">

										<tr>
											<td class="">${certdao.id}</td>
											<td class="">${certdao.nomMedecin}</td>
											<td class="">${certdao.nbreJour}</td>
											<td class="">${certdao.dateDebut}</td>
											<td class="">${certdao.dateFin}</td>
											<td class="">${certdao.nomPatient}</td>
											<td class="">${certdao.prenomPatient}</td>
											<td class="">${certdao.description}</td>
											<td class="">${certdao.dataNaiss}</td>
											
											<td class="text-right">
												<div class="btn-group text-right">
													<button type="button"
														class="btn btn-success br2 btn-xs fs12 dropdown-toggle"
														data-toggle="dropdown" aria-expanded="false">
														Actions <span class="caret ml5"></span>
													</button>
													<ul class="dropdown-menu" role="menu">
														<li><a href="ModifierCertificatDeReposControlleur?id=${certdao.id}">Modifier</a></li>
														<li><a
															href="SupprimierCertificatDeReposControlleur?id=${certdao.id}"
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
				<button style="margin-left: 2%;" class="btn btn-primary mb5" type="button" onclick="document.location='http://localhost:5050/Cabinet_medecin/AddCertificatDeReposControlleur'">
                                    <i class="fa fa-floppy-o pr5"></i> Add Certificats De Repos
                                </button>
			</div>
		</div>
	</section>






</body>
</html>