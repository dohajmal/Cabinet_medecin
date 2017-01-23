package tn.iit.controlleur;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import tn.iit.dao.RendezVouzDAO;
import tn.iit.model.Rendezvous;
import tn.iit.util.DateUtil;

/**
 * Servlet implementation class ModifierRendezVousControlleur
 */
@WebServlet("/ModifierRendezVousControlleur")
public class ModifierRendezVousControlleur extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifierRendezVousControlleur() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		Rendezvous rendezvous=RendezVouzDAO.getRendezVousById(id);
				
		HttpSession		Ses=request.getSession();

		Ses.setAttribute("rendezvous",rendezvous);
		request.getRequestDispatcher("/ModifierRendezVous.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RendezVouzDAO rendezdao =new RendezVouzDAO();
		try {
		String date = request.getParameter("date1");
		java.util.Date date2 = DateUtil.stringToDate(date);
		System.out.println(date2); 
		String Heure_debut=request.getParameter("Heure_debut");
		String Heure_fin=request.getParameter("Heure_fin");
	
		String description=request.getParameter("description");
		System.out.println(description);
	
		DateFormat formatter = new SimpleDateFormat("HH:mm");
		java.sql.Time timeValue;
		
			timeValue = new java.sql.Time(formatter.parse(Heure_debut).getTime());
		
		DateFormat formatter1 = new SimpleDateFormat("HH:mm");
		java.sql.Time timeValue1 = new java.sql.Time(formatter1.parse(Heure_fin).getTime());
		int ids=Integer.parseInt(request.getParameter("id_rendez"));
		System.out.println(ids);

		rendezdao.ModifierRendezVous(ids, date2, description, timeValue, timeValue1);		

	request.getRequestDispatcher("/Cabinet_medecin/ListeRendezVousControleur.jsp").forward(request, response);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

	}
}
