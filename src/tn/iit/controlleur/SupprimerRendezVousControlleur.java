package tn.iit.controlleur;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import tn.iit.dao.RendezVouzDAO;

/**
 * Servlet implementation class SupprimerRendezVousControlleur
 */
@WebServlet("/SupprimerRendezVousControlleur")
public class SupprimerRendezVousControlleur extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SupprimerRendezVousControlleur() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	int id = Integer.parseInt(request.getParameter("id"));
		
		//MatiereDAO.DeleteMatiere(id);
		//request.getRequestDispatcher("/ListeMatiere.jsp").forward(request, response);
		boolean delete;
		delete = RendezVouzDAO.DeleteRendezVous(id);
		if (delete == true)
		{
			response.sendRedirect("/Cabinet_medecin/ListeRendezVousControleur");
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
