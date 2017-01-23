package tn.iit.controlleur;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tn.iit.dao.CertificatDeRepotDAO;
import tn.iit.dao.MedicamentDAO;
import tn.iit.dao.OrdonnanceDAO;
import tn.iit.model.Certificatderepo;
import tn.iit.model.Medicament;
import tn.iit.model.Ordonnance;
import tn.iit.util.DateUtil;

/**
 * Servlet implementation class AddCertificatDeReposControlleur
 */
@WebServlet("/AddCertificatDeReposControlleur")
public class AddCertificatDeReposControlleur extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCertificatDeReposControlleur() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		OrdonnanceDAO orddao=new OrdonnanceDAO();
		request.setAttribute("orddao", orddao.findAll());
		request.getRequestDispatcher("/AddCertificatDeRepos.jsp").forward(request, response);
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
	/*	int ids=Integer.parseInt(request.getParameter("id_certrepos"));
		System.out.println(ids);*/
				
		int id_ordonnance=Integer.parseInt(request.getParameter("id_ordonnance"));
		System.out.println(id_ordonnance);
		Ordonnance ord=new Ordonnance();
		ord=orddao.findAllId(id_ordonnance);
	Certificatderepo certrepos=new Certificatderepo();
	certrepos.setNomMedecin(nom_medecin);
	certrepos.setNbreJour(nombre_jour);
	certrepos.setDateDebut(date_debut1);
	certrepos.setDateFin(date_fin1);
	certrepos.setNomPatient(nom_patient);
	certrepos.setPrenomPatient(prenom_patient);
	certrepos.setDescription(description);
	certrepos.setDataNaiss(date_naiss1);
	certrepos.setOrdonnance(ord);
	
		CertificatDeRepotDAO certreposdao=new CertificatDeRepotDAO();
		certrepos=certreposdao.addCertificatderepo(certrepos);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
