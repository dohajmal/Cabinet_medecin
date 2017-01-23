package tn.iit.controlleur;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tn.iit.dao.CertificatDeRepotDAO;
import tn.iit.dao.CertificatsMedicauxDAO;
import tn.iit.model.Certificatderepo;
import tn.iit.model.Certificatsmedicaux;
import tn.iit.util.DateUtil;

/**
 * Servlet implementation class ModifierCertificatsMedicauxControlleur
 */
@WebServlet("/ModifierCertificatsMedicauxControlleur")
public class ModifierCertificatsMedicauxControlleur extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifierCertificatsMedicauxControlleur() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));

		Certificatsmedicaux certmedc =CertificatsMedicauxDAO.getCertificatsmedicauxById(id);
	HttpSession		Ses=request.getSession();

	Ses.setAttribute("certmedc",certmedc);
	request.getRequestDispatcher("/ModifierCertificatMedicaux.jsp").forward(request, response);	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cause=request.getParameter("cause");
		System.out.println(cause);
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
		String fonction_suivant=request.getParameter("fonction_suivant");
		System.out.println(fonction_suivant);
		String type_mouvements=request.getParameter("type_mouvements");
		System.out.println(type_mouvements);
		String type_efforts=request.getParameter("type_efforts");
		System.out.println(type_efforts);
		String capacite_efforts=request.getParameter("capacite_efforts");
		System.out.println(capacite_efforts);
		String sitation_exercice=request.getParameter("sitation_exercice");
		System.out.println(sitation_exercice);
		String remarque=request.getParameter("remarque");
		System.out.println(remarque);
	  int ids=Integer.parseInt(request.getParameter("id_certmedic"));
	  System.out.println(ids);
		CertificatsMedicauxDAO.modifierCertificatsmedicaux(response, ids, cause, nom_medecin, nombre_jour, date_debut1,date_fin1, nom_patient,prenom_patient, description, date_naiss1, fonction_suivant, type_mouvements, type_efforts, capacite_efforts, sitation_exercice, remarque);
		request.getRequestDispatcher("/ListeCertificatsmedicaux.jsp").forward(request, response);
	}

}

