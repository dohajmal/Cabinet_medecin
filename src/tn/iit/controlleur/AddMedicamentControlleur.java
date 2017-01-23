package tn.iit.controlleur;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tn.iit.dao.FichierPatientDAO;
import tn.iit.dao.MedicamentDAO;
import tn.iit.dao.OrdonnanceDAO;
import tn.iit.dao.PatientDAO;
import tn.iit.model.Fichierpatient;
import tn.iit.model.Medicament;
import tn.iit.model.Ordonnance;
import tn.iit.model.Patient;

/**
 * Servlet implementation class AddMedicamentControlleur
 */
@WebServlet("/AddMedicamentControlleur")
public class AddMedicamentControlleur extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddMedicamentControlleur() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		OrdonnanceDAO orddao=new OrdonnanceDAO();
		request.setAttribute("orddao", orddao.findAll());
		request.getRequestDispatcher("/AddMedicament.jsp").forward(request, response);
		String nom_medicament=request.getParameter("nom_medicament");
		System.out.println(nom_medicament);
		int id_ordonnance=Integer.parseInt(request.getParameter("id_ordonnance"));
		System.out.println(id_ordonnance);
		Ordonnance ord=new Ordonnance();
		
		ord=orddao.findAllId(id_ordonnance);
		
		Medicament medic = new Medicament();
		medic.setNomMedicament(nom_medicament);
		medic.setOrdonnance(ord);
		MedicamentDAO Medicdao=new MedicamentDAO();
		medic=Medicdao.addMedicament(medic);
	}

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
