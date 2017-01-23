package tn.iit.controlleur;

import java.io.IOException;
import java.sql.Time;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tn.iit.dao.FichierPatientDAO;
import tn.iit.dao.PatientDAO;
import tn.iit.dao.RendezVouzDAO;
import tn.iit.model.Fichierpatient;
import tn.iit.model.Patient;
import tn.iit.model.Rendezvous;
import tn.iit.util.DateUtil;

/**
 * Servlet implementation class ListeRendezVousControleur
 */
@WebServlet("/ListeRendezVousControleur")
public class ListeRendezVousControleur extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListeRendezVousControleur() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RendezVouzDAO rendezdao=new RendezVouzDAO();
		request.setAttribute("rendezdao",rendezdao.findAll());
		PatientDAO patdao=new PatientDAO();
		List<Patient> listPatients = patdao.findAll();
		
		String listEvent="";
		for (Patient p: listPatients){
		
			listEvent+=" \n title: '"+ p.getNom() +" "+p.getPrenom()+"', \n"+
              "start: '2016-06-23', \n"+
              "end: '2016-06-23', \n"+
              "className: 'fc-event-default' \n : ";

		}
		request.setAttribute("patdao", patdao.findAll());
		
		request.setAttribute("listEvent", listEvent);
		request.getRequestDispatcher("/ListeRendezVouz.jsp").forward(request, response);
		
		
		
	String date = request.getParameter("date1");
		java.util.Date date2 = DateUtil.stringToDate(date);
		System.out.println(date2); 
		String Heure_debut=request.getParameter("Heure_debut");
		String Heure_fin=request.getParameter("Heure_fin");
	
	String description=request.getParameter("description");
	System.out.println(description);
		try{
		DateFormat formatter = new SimpleDateFormat("HH:mm");
		java.sql.Time timeValue = new java.sql.Time(formatter.parse(Heure_debut).getTime());
		DateFormat formatter1 = new SimpleDateFormat("HH:mm");
		java.sql.Time timeValue1 = new java.sql.Time(formatter1.parse(Heure_fin).getTime());
		
	
		
		int id_patient=Integer.parseInt(request.getParameter("id_patient"));
		System.out.println(id_patient);
		Patient pat=new Patient();
		pat=patdao.findAllId(id_patient);
		
			Rendezvous rendezvous=new Rendezvous();
			rendezvous.setHeureDebut(timeValue);
			rendezvous.setHeureFin(timeValue1);
			rendezvous.setDate(date2);
			rendezvous.setDesciption(description);	
			rendezvous.setPatient(pat);
			
	RendezVouzDAO rendezvousdao=new RendezVouzDAO();
	if(timeValue.before(timeValue1)){
		rendezvous=rendezvousdao.ADDRendezVouz(rendezvous);
	}
	
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
