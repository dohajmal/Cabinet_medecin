package tn.iit.dao;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import tn.iit.model.Certificatderepo;
import tn.iit.model.Fichierpatient;
import tn.iit.util.HibernateUtil;

public class CertificatDeRepotDAO {
	Session session = HibernateUtil.sessionFactory.openSession();

	public List<Certificatderepo> findAll() {
		return session.createQuery("SELECT c FROM Certificatderepo c").list();

	}

	public Certificatderepo addCertificatderepo(Certificatderepo certrepos) {

		try {
			session.beginTransaction();
			session.save(certrepos);
			session.flush();
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			e.getMessage();
		}
		return certrepos;
	}

	public static void modifierCertificatderepo(HttpServletResponse response,int i,String nomMedecin,int nbreJour,Date dateDebut,Date dateFin,String nomPatient,String prenomPatient,String description,Date dataNaiss) {
		Session session = HibernateUtil.getSessionFactory().openSession();

		try {

			session.beginTransaction();
			Certificatderepo Certrepos = (Certificatderepo) session.get(Certificatderepo.class, i);
			Certrepos.setNomMedecin(nomMedecin);
			Certrepos.setNbreJour(nbreJour);
			Certrepos.setDateDebut(dateDebut);
			Certrepos.setDateFin(dateFin);
			Certrepos.setNomPatient(prenomPatient);
			Certrepos.setPrenomPatient(prenomPatient);
			Certrepos.setDescription(description);
			Certrepos.setDataNaiss(dataNaiss);
			session.update(Certrepos);
			session.getTransaction().commit();
		} catch (RuntimeException e) {
			e.printStackTrace();
		} finally {
			session.flush();
			session.close();
		}
	}

	public static Certificatderepo getCertificatderepoById(int id) {
		Session session = HibernateUtil.sessionFactory.openSession();

		try {
			session.beginTransaction();
			Certificatderepo resultat = (Certificatderepo) session
					.createQuery("SELECT c FROM Certificatderepo c where c.id=:id").setParameter("id", id).uniqueResult();
			session.getTransaction().commit();
			return resultat;
		} catch (RuntimeException e) {
			e.printStackTrace();
			return null;
		}
	}

	public static void deleteCertificatderepo(int id) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction trns = null;
		try {
			trns = session.beginTransaction();
			Certificatderepo Certrepos = (Certificatderepo) session.createCriteria(Certificatderepo.class)
					.add(Restrictions.eq("id", id)).uniqueResult();
			session.delete(Certrepos);
			session.getTransaction().commit();
		} catch (RuntimeException e) {
			if (trns != null) {
				trns.rollback();
			}
			e.printStackTrace();
		}
	}

}

