package tn.iit.controlleur;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tn.iit.dao.FichierPatientDAO;
import tn.iit.dao.MedicamentDAO;

/**
 * Servlet implementation class ListeMedicamentControlleur
 */
@WebServlet("/ListeMedicamentControlleur")
public class ListeMedicamentControlleur extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListeMedicamentControlleur() {
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
		
		MedicamentDAO Medicdao=new MedicamentDAO();
		request.setAttribute("Medicament", Medicdao.findAll());
		request.getRequestDispatcher("/ListeMedicament.jsp").forward(request, response);
	}

}
