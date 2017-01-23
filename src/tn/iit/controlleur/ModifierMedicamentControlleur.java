package tn.iit.controlleur;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tn.iit.dao.FichierPatientDAO;
import tn.iit.dao.MedicamentDAO;
import tn.iit.model.Fichierpatient;
import tn.iit.model.Medicament;

/**
 * Servlet implementation class ModifierMedicamentControlleur
 */
@WebServlet("/ModifierMedicamentControlleur")
public class ModifierMedicamentControlleur extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ModifierMedicamentControlleur() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));

		Medicament Medic = MedicamentDAO.getMedicamentById(id);
		HttpSession Ses = request.getSession();

		Ses.setAttribute("Medic", Medic);
		request.getRequestDispatcher("/ModifierMedicament.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String nomMedicament = request.getParameter("nom_medic");
		System.out.println("nomMedicament");
		/*int id_ordonnance = Integer.parseInt(request.getParameter("id_ordonnance"));
		System.out.println(id_ordonnance);*/
		int ids = Integer.parseInt(request.getParameter("id_medicament"));
		System.out.println(ids);
		MedicamentDAO.modifierMedicament(response, ids, nomMedicament);
		request.getRequestDispatcher("/ListeMedicament.jsp").forward(request, response);
	}

}
