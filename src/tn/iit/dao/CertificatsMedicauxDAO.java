package tn.iit.dao;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import tn.iit.model.Certificatderepo;
import tn.iit.model.Certificatsmedicaux;
import tn.iit.util.HibernateUtil;

public class CertificatsMedicauxDAO {
	Session session = HibernateUtil.sessionFactory.openSession();

	public List<Certificatsmedicaux> findAll() {
		return session.createQuery("SELECT c FROM Certificatsmedicaux c").list();

	}

	public Certificatsmedicaux addCertificatsmedicaux(Certificatsmedicaux certmed) {

		try {
			session.beginTransaction();
			session.save(certmed);
			session.flush();
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			e.getMessage();
		}
		return certmed;
	}

	public static void modifierCertificatsmedicaux(HttpServletResponse response,int id,String cause,String nomMedecin,int nbreJour,Date dateDebut,Date dateFin,String nomPatient,String prenomPatient,String description,Date dataNaiss,String fonctionSuivant,String typeMouvements,String typeEfforts,String capaciteEfforts,String sitationExercice,String remarque) {
		Session session = HibernateUtil.getSessionFactory().openSession();

		try {

			session.beginTransaction();
			Certificatsmedicaux Certmed = (Certificatsmedicaux) session.get(Certificatsmedicaux.class, id);
			Certmed.setCause(cause);
			Certmed.setNbreJour(nbreJour);
			Certmed.setDateDebut(dateDebut);
			Certmed.setDateFin(dateFin);
			Certmed.setNomMedecin(nomMedecin);
			Certmed.setNomPatient(nomPatient);
			Certmed.setPrenomPatient(prenomPatient);
			Certmed.setDescription(description);
			Certmed.setDataNaiss(dataNaiss);
			Certmed.setFonctionSuivant(fonctionSuivant);
			Certmed.setTypeMouvements(typeMouvements);
			Certmed.setTypeEfforts(typeEfforts);
			Certmed.setCapaciteEfforts(capaciteEfforts);
			Certmed.setCapaciteEfforts(capaciteEfforts);
			Certmed.setSitationExercice(sitationExercice);
			Certmed.setRemarque(remarque);
			session.update(Certmed);
			session.getTransaction().commit();
		} catch (RuntimeException e) {
			e.printStackTrace();
		} finally {
			session.flush();
			session.close();
		}
	}

	public static Certificatsmedicaux getCertificatsmedicauxById(int id) {
		Session session = HibernateUtil.sessionFactory.openSession();

		try {
			session.beginTransaction();
			Certificatsmedicaux resultat = (Certificatsmedicaux) session
					.createQuery("SELECT c FROM Certificatsmedicaux c where c.id=:id").setParameter("id", id).uniqueResult();
			session.getTransaction().commit();
			return resultat;
		} catch (RuntimeException e) {
			e.printStackTrace();
			return null;
		}
	}

	public static void deleteCertificatsmedicaux(int id) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction trns = null;
		try {
			trns = session.beginTransaction();
			Certificatsmedicaux Certmed = (Certificatsmedicaux) session.createCriteria(Certificatsmedicaux.class)
					.add(Restrictions.eq("id", id)).uniqueResult();
			session.delete(Certmed);
			session.getTransaction().commit();
		} catch (RuntimeException e) {
			if (trns != null) {
				trns.rollback();
			}
			e.printStackTrace();
		}
	}

}

