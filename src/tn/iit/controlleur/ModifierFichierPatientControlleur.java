package tn.iit.controlleur;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tn.iit.dao.FichierPatientDAO;
import tn.iit.model.Fichierpatient;
import tn.iit.util.DateUtil;

import java.util.*;

/**
 * Servlet implementation class ModifierFichierPatientControlleur
 */
@WebServlet("/ModifierFichierPatientControlleur")
public class ModifierFichierPatientControlleur extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifierFichierPatientControlleur() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));

		Fichierpatient FichPac =FichierPatientDAO.getFichierPatientById(id);
	HttpSession		Ses=request.getSession();

	Ses.setAttribute("FichPac",FichPac);
	request.getRequestDispatcher("/ModifierFichierPatient.jsp").forward(request, response);	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);				
		String nom = request.getParameter("nom");
		System.out.println(nom);
		String prenom = request.getParameter("prenom");
		System.out.println(prenom);
		String mail = request.getParameter("mail");
		System.out.println(mail);
		String dateNaissPatient = request.getParameter("date_naiss");
		java.util.Date date1 = DateUtil.stringToDate(dateNaissPatient);
		System.out.println(date1); 
		
		String sex = request.getParameter("sex");
		System.out.println(sex);
		String etatcivil=request.getParameter("etatcivil");
		System.out.println("etatcivil");
		String ville=request.getParameter("ville");
		System.out.println("ville");
		int tel = Integer.parseInt(request.getParameter("tel"));
		System.out.println(tel);
		String nationnalite=request.getParameter("nationnalite");
		System.out.println("nationnalite");
		String daterendezvous = request.getParameter("daterendezvous");
		java.util.Date  daterendezvous1 = DateUtil.stringToDate(daterendezvous);
		System.out.println(daterendezvous1); 
		String maladie=request.getParameter("maladie");
		System.out.println(maladie);
		String medicament=request.getParameter("medicament");
		System.out.println("medicament");
		/*int id_patient = Integer.parseInt(request.getParameter("id_patient"));
		System.out.println(id_patient);*/
		int ids=Integer.parseInt(request.getParameter("id_fichierpatient"));
		System.out.println(ids);
		FichierPatientDAO.modifierFichierpatient(response,ids, nom, prenom,date1, sex,etatcivil, ville,tel, nationnalite, mail,daterendezvous1, maladie, medicament);		
		request.getRequestDispatcher("/ListeFichierPatient.jsp").forward(request, response);	
	}
}

