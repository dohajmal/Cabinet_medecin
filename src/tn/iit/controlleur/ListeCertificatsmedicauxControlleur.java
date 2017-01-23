package tn.iit.controlleur;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tn.iit.dao.CertificatDeRepotDAO;
import tn.iit.dao.CertificatsMedicauxDAO;

/**
 * Servlet implementation class ListeCertificatsmedicauxControlleur
 */
@WebServlet("/ListeCertificatsmedicauxControlleur")
public class ListeCertificatsmedicauxControlleur extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListeCertificatsmedicauxControlleur() {
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
		CertificatsMedicauxDAO certmeddao=new CertificatsMedicauxDAO();
		request.setAttribute("certmeddao", certmeddao.findAll());
		request.getRequestDispatcher("/ListeCertificatsmedicaux.jsp").forward(request, response);
	}
}
