package tn.iit.controlleur;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tn.iit.dao.CertificatDeRepotDAO;
import tn.iit.dao.FichierPatientDAO;
import tn.iit.model.Certificatderepo;
import tn.iit.model.Fichierpatient;
import tn.iit.util.DateUtil;

/**
 * Servlet implementation class ModifierCertificatDeReposControlleur
 */
@WebServlet("/ModifierCertificatDeReposControlleur")
public class ModifierCertificatDeReposControlleur extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifierCertificatDeReposControlleur() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));

		Certificatderepo certrepos =CertificatDeRepotDAO.getCertificatderepoById(id);
	HttpSession		Ses=request.getSession();

	Ses.setAttribute("certrepos",certrepos);
	request.getRequestDispatcher("/ModifierCertificatDeRepos.jsp").forward(request, response);	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);				
		String nom_medecin = request.getParameter("nom_medecin");
		System.out.println(nom_medecin);
		int nombre_jour=Integer.parseInt(request.getParameter("nombre_jour"));
		System.out.println(nombre_jour);
		String date_debut = request.getParameter("date_debut");
		java.util.Date date_debut1 = DateUtil.stringToDate(date_debut);
		System.out.println(date_debut1); 
		String date_fin = request.getParameter("date_fin");
		java.util.Date date_fin1 = DateUtil.stringToDate(date_fin);
		System.out.println(date_fin1); 
		String nom_patient = request.getParameter("nom_patient");
		System.out.println(nom_patient);
		String prenom_patient=request.getParameter("prenom_patient");
		System.out.println("prenom_patient");
		String description=request.getParameter("description");
		String date_naiss = request.getParameter("date_naiss");
		java.util.Date  date_naiss1 = DateUtil.stringToDate(date_naiss);
		System.out.println(date_naiss1); 
	   /*int id_ordonance = Integer.parseInt(request.getParameter("id_ordonance"));
		System.out.println(id_ordonance);*/
		int ids=Integer.parseInt(request.getParameter("id_certrepos"));
		System.out.println(ids);
		CertificatDeRepotDAO.modifierCertificatderepo(response, ids, nom_medecin, nombre_jour, date_debut1, date_fin1, nom_patient, prenom_patient, description, date_naiss1);
		request.getRequestDispatcher("/ListeCertificatDeRepos.jsp").forward(request, response);
	}

}
