package tn.iit.dao;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import tn.iit.model.Fichierpatient;
import tn.iit.model.Medicament;
import tn.iit.util.HibernateUtil;

public class FichierPatientDAO {

	Session session = HibernateUtil.sessionFactory.openSession();

	public List<Fichierpatient> findAll() {
		return session.createQuery("SELECT f FROM Fichierpatient f").list();

	}

	public Fichierpatient ADDFichierpatient(Fichierpatient fichpa) {

		try {
			session.beginTransaction();
			session.save(fichpa);
			session.flush();
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			e.getMessage();
		}
		return fichpa;
	}

	public static void modifierFichierpatient(HttpServletResponse response,int i, String nomPatient, String prenomPatient, Date dateNaissPatient,
			String sexePatient, String etatCivil, String ville, int telephone, String nationnalite, String mail,
			Date dateDernierRendezVous, String maladie, String medicament) {
		Session session = HibernateUtil.getSessionFactory().openSession();

		try {

			session.beginTransaction();
			Fichierpatient Ficpat = (Fichierpatient) session.get(Fichierpatient.class, i);
			Ficpat.setNomPatient(nomPatient);
			Ficpat.setPrenomPatient(prenomPatient);
			Ficpat.setDateNaissPatient(dateNaissPatient);
			Ficpat.setSexePatient(sexePatient);
			Ficpat.setEtatCivil(etatCivil);
			Ficpat.setVille(ville);
			Ficpat.setTelephone(telephone);
			Ficpat.setNationnalite(nationnalite);
			Ficpat.setMail(mail);
			Ficpat.setDateDernierRendezVous(dateDernierRendezVous);
			Ficpat.setMaladie(maladie);
			Ficpat.setMedicament(medicament);

			System.out.println("iit0   " + Ficpat.getNomPatient());
			session.update(Ficpat);
			session.getTransaction().commit();
		} catch (RuntimeException e) {
			e.printStackTrace();
		} finally {
			session.flush();
			session.close();
		}
	}

	public static Fichierpatient getFichierPatientById(int id) {
		Session session = HibernateUtil.sessionFactory.openSession();

		try {
			session.beginTransaction();
			Fichierpatient resultat = (Fichierpatient) session
					.createQuery("SELECT f FROM Fichierpatient f where f.id=:id").setParameter("id", id).uniqueResult();
			session.getTransaction().commit();
			return resultat;
		} catch (RuntimeException e) {
			e.printStackTrace();
			return null;
		}
	}

	public static boolean  deleteFichierpatient(int id) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction trns = null;
		boolean delete = false;
		try {
			trns = session.beginTransaction();
			Fichierpatient fichpat = (Fichierpatient) session.createCriteria(Fichierpatient.class)
					.add(Restrictions.eq("id", id)).uniqueResult();
			session.delete(fichpat);
			session.getTransaction().commit();
		    delete = true;
				 } catch (RuntimeException e) {
			            if (trns != null) {
			                trns.rollback();
			            }
			            e.printStackTrace();
			        }
				return delete;
			}

}
