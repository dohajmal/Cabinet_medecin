package tn.iit.controlleur;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tn.iit.dao.FichierPatientDAO;
import tn.iit.dao.PatientDAO;
import tn.iit.model.Fichierpatient;
import tn.iit.model.Patient;
import tn.iit.util.DateUtil;

/**
 * Servlet implementation class InscriptionPatientControlleur
 */
@WebServlet("/InscriptionPatientControlleur")
public class InscriptionPatientControlleur extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InscriptionPatientControlleur() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PatientDAO patdao=new PatientDAO();
		request.setAttribute("patdao", patdao.findAll());
		request.getRequestDispatcher("/AddFichierPatient.jsp").forward(request, response);	

/*	request.setAttribute("fichdao", fichdao.findAll());*/
		String nomPatient = request.getParameter("nom");
		System.out.println(nomPatient);
		String prenomPatient = request.getParameter("prenom");
		System.out.println(prenomPatient);
		String mail = request.getParameter("mail");
		System.out.println(mail);
		int telephone = Integer.parseInt(request.getParameter("tel"));
		System.out.println(telephone);
		String dateNaissPatient = request.getParameter("date_naiss");
		java.util.Date date1 = DateUtil.stringToDate(dateNaissPatient);
		System.out.println(date1); 
		String sexePatient = request.getParameter("sex");
		System.out.println(sexePatient);
		String etatcivil=request.getParameter("etatcivil");
		System.out.println(etatcivil);
		String ville=request.getParameter("ville");
		System.out.println(ville);

		String nationnalite=request.getParameter("nationnalite");
		System.out.println(nationnalite);
		String daterendezvous = request.getParameter("daterendezvous");
		java.util.Date  daterendezvous1 = DateUtil.stringToDate(daterendezvous);
		System.out.println(daterendezvous1); 
		String maladie=request.getParameter("maladie");
		System.out.print(maladie);
		String medicament=request.getParameter("medicament");
		System.out.println(medicament);
		int id_patient=Integer.parseInt(request.getParameter("id_patient"));
		System.out.println(id_patient);
		Patient pat=new Patient();
		pat=patdao.findAllId(id_patient);
		
			Fichierpatient Etpat = new Fichierpatient();
		
	Etpat.setDateDernierRendezVous(daterendezvous1);
	Etpat.setDateNaissPatient(date1);
	Etpat.setEtatCivil(etatcivil);
	Etpat.setMail(mail);
	Etpat.setMedicament(medicament);
	Etpat.setNationnalite(nationnalite);
	Etpat.setPrenomPatient(prenomPatient);
	Etpat.setSexePatient(sexePatient);
	Etpat.setTelephone(telephone);
	Etpat.setVille(ville);
	Etpat.setNomPatient(prenomPatient);
	Etpat.setMaladie(maladie);
	Etpat.setPatient(pat);
		//Fichierpatient Etpat = new Fichierpatient(nomPatient, prenomPatient, date1, sexePatient, etatcivil, ville, telephone, nationnalite, mail, daterendezvous1, maladie, medicament);

		FichierPatientDAO fichdao=new FichierPatientDAO();
		Etpat=fichdao.ADDFichierpatient(Etpat);
	}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
