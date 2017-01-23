package tn.iit.controlleur;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tn.iit.dao.CertificatsMedicauxDAO;
import tn.iit.dao.OrdonnanceDAO;
import tn.iit.model.Certificatsmedicaux;
import tn.iit.model.Ordonnance;
import tn.iit.util.DateUtil;

/**
 * Servlet implementation class AddCertificatsmedicauxControlleur
 */
@WebServlet("/AddCertificatsmedicauxControlleur")
public class AddCertificatsmedicauxControlleur extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCertificatsmedicauxControlleur() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		OrdonnanceDAO orddao=new OrdonnanceDAO();
		request.setAttribute("orddao", orddao.findAll());
		request.getRequestDispatcher("/AddCertificatsMedicaux.jsp").forward(request, response);
		String cause=request.getParameter("cause");
		System.out.println(cause);
		String nom_medecin = request.getParameter("nom_medecin");
		System.out.println(nom_medecin);
		String date_debut = request.getParameter("date_debut");
		java.util.Date date_debut1 = DateUtil.stringToDate(date_debut);
		System.out.println(date_debut1); 
		String date_fin = request.getParameter("date_fin");
		java.util.Date date_fin1 = DateUtil.stringToDate(date_fin);
		System.out.println(date_fin1); 
		int nombre_jour=Integer.parseInt(request.getParameter("nombre_jour"));
		System.out.println(nombre_jour);
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
	   /*int id_ordonance = Integer.parseInt(request.getParameter("id_ordonance"));
		System.out.println(id_ordonance);*/
		/*int ids=Integer.parseInt(request.getParameter("id_certmedc"));
		System.out.println(ids);*/
		int id_ordonnance=Integer.parseInt(request.getParameter("id_ordonnance"));
		System.out.println(id_ordonnance);
		Ordonnance ord=new Ordonnance();
		ord=orddao.findAllId(id_ordonnance);
	Certificatsmedicaux certmedic=new Certificatsmedicaux();
	certmedic.setCause(cause);
	certmedic.setNomMedecin(nom_medecin);
	certmedic.setNbreJour(nombre_jour);
	certmedic.setDateDebut(date_debut1);
	certmedic.setDateFin(date_fin1);
	certmedic.setNomPatient(nom_patient);
	certmedic.setPrenomPatient(prenom_patient);
	certmedic.setDescription(description);
	certmedic.setDataNaiss(date_naiss1);
	certmedic.setFonctionSuivant(fonction_suivant);
	certmedic.setOrdonnance(ord);
	certmedic.setTypeMouvements(type_mouvements);
	certmedic.setTypeEfforts(type_efforts);
	certmedic.setCapaciteEfforts(capacite_efforts);
	certmedic.setSitationExercice(sitation_exercice);
	certmedic.setRemarque(remarque);
		
		CertificatsMedicauxDAO certmidecdao=new CertificatsMedicauxDAO();
		certmedic=certmidecdao.addCertificatsmedicaux(certmedic);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
