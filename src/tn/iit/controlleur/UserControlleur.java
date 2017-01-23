package tn.iit.controlleur;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tn.iit.dao.UtilisateurDAO;
import tn.iit.model.Administrateur;
import tn.iit.model.Medecin;
import tn.iit.model.Patient;
import tn.iit.model.Secretaire;
import tn.iit.model.Utilisateur;





/**
 * Servlet implementation class UserControlleur
 */
@WebServlet("/UserControlleur")
public class UserControlleur extends HttpServlet {
	private static final long serialVersionUID = 1L;



    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserControlleur() {
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
		String login=request.getParameter("login");
		System.out.println(login);
		String password=request.getParameter("password");
		System.out.println(password);

UtilisateurDAO utilisateurDAO=new UtilisateurDAO();
Utilisateur u;
Administrateur a;
Secretaire s;
Patient p;
Medecin m;

u = utilisateurDAO.Login(login,password);
if (u != null) {
	if(u.getType().equals("medecin"))
	{
		m=utilisateurDAO.medecin(u.getIdUser());
		HttpSession	Ses=request.getSession();
		Ses.setAttribute("medecin",m.getUtilisateur().getType());
		Ses.setAttribute("utilisateur",m);
		Ses.setAttribute("Noms",m.getDrName()+"  "+m.getPrenom() );
		
		response.sendRedirect("/Cabinet_medecin/ListeRendezVousControleur");	
		System.out.println("SUCCESS medecin");
	}else if(u.getType().equals("admin")){
			a=utilisateurDAO.administrateur(u.getIdUser());
		HttpSession	Ses=request.getSession();
		Ses.setAttribute("admin",a.getUtilisateur().getType());
		Ses.setAttribute("utilisateur","admin");
		Ses.setAttribute("Noms",a.getNom()+"  "+a.getPrenom() );
		response.sendRedirect("/Cabinet_medecin/ListeMedecinControlleur");
		System.out.println("SUCCESS1111111 admin");
		
	}else if(u.getType().equals("secretaire")){
		s=utilisateurDAO.secretaire(u.getIdUser());
	HttpSession	Ses=request.getSession();
		Ses.setAttribute("secretaire",s.getUtilisateur().getType());
		Ses.setAttribute("Noms",s.getNom()+"  "+s.getPrenom() );
		System.out.println("non p    "+s.getNom());
		
		response.sendRedirect("/Cabinet_medecin/ListeRendezVousControleur");

		System.out.println("succees secretaire");
	}
	else if(u.getType().equals("patient"))
	{
		p=utilisateurDAO.patient(u.getIdUser());
		HttpSession	Ses=request.getSession();
		Ses.setAttribute("patient",p.getUtilisateur().getType());
		response.sendRedirect("/Cabinet_medecin/ListeRendezVousControleur");
		Ses.setAttribute("Noms",p.getNom()+"  "+p.getPrenom() );
		System.out.println("succcess patient" +p.getUtilisateur().getType());
	}

	
} else {
	request.getRequestDispatcher("user.jsp").forward(request, response);
	System.out.println("agnet not found");
	
}


	}

}
