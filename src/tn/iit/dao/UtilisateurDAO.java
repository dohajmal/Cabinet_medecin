package tn.iit.dao;

import org.hibernate.Session;

import tn.iit.model.Administrateur;
import tn.iit.model.Medecin;
import tn.iit.model.Patient;
import tn.iit.model.Secretaire;
import tn.iit.model.Utilisateur;
import tn.iit.util.HibernateUtil;

public class UtilisateurDAO {
	Utilisateur result = null;
	Administrateur result1=null;
	Secretaire result2 = null;
	Patient result3 = null;
	Medecin result4=null;
	Session session = HibernateUtil.sessionFactory.openSession();

	public Utilisateur Login(String login, String password) {

		try {

			result = (Utilisateur) session
					.createQuery("SELECT u FROM Utilisateur u where u.login=:login and u.password=:password")
					.setString("login", login).setString("password", password).uniqueResult();
			return result;
		} catch (Exception e) {

			e.printStackTrace();
			e.getMessage();
		}
		return result;
	}
	public Administrateur administrateur(int idUser) {
		result1=(Administrateur)session.createQuery("SELECT a FROM Administrateur a where a.utilisateur.idUser=:idUser").setParameter("idUser", idUser).uniqueResult();
		return result1;
	}
	public Secretaire secretaire(int idUser){
		result2=(Secretaire)session.createQuery("SELECT s FROM Secretaire s where s.utilisateur.idUser=:idUser").setParameter("idUser", idUser).uniqueResult();
		return result2;
	}

	public Patient patient(int idUser) {
		result3=(Patient)session.createQuery("SELECT p FROM Patient p where p.utilisateur.idUser=:idUser").setParameter("idUser", idUser).uniqueResult();
		return result3;
	}
	
	public Medecin medecin(int idUser) {
		result4=(Medecin)session.createQuery("SELECT m FROM Medecin m where m.utilisateur.idUser=:idUser").setParameter("idUser", idUser).uniqueResult();
		return result4;
	}
}