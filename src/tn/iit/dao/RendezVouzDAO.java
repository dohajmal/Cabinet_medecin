package tn.iit.dao;

import java.sql.Time;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import tn.iit.model.Rendezvous;
import tn.iit.util.HibernateUtil;

public class RendezVouzDAO {
	Session session = HibernateUtil.sessionFactory.openSession();

	public List<Rendezvous> findAll() {
		return session.createQuery("SELECT r FROM Rendezvous r").list();

	}

	public Rendezvous ADDRendezVouz(Rendezvous rendezvous) {

		try {
			session.beginTransaction();
			session.save(rendezvous);
			session.flush();
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			e.getMessage();
		}
		return rendezvous;
	}
	public static void ModifierRendezVous(int id, Date date, String desciption,Time heureDebut,Time heureFin) {
		Session session = null;
		HibernateUtil d = null;
		session = d.getSessionFactory().openSession();
		// Transaction trns = null;

		try {

			session.beginTransaction();
			Rendezvous rendezvous = (Rendezvous) session.get(Rendezvous.class, id);
			rendezvous.setDate(date);
			rendezvous.setDesciption(desciption);
			rendezvous.setHeureDebut(heureDebut);
			rendezvous.setHeureFin(heureFin);
			session.update(rendezvous);
			session.getTransaction().commit();
		} catch (RuntimeException e) {
			e.printStackTrace();
		} finally {
			session.flush();
			session.close();
		}
	}

	
	public static Rendezvous getRendezVousById(int id) {
		Session session = HibernateUtil.sessionFactory.openSession();

		try {
			session.beginTransaction();
			Rendezvous resultat = (Rendezvous) session.createQuery("SELECT r FROM Rendezvous r where r.id=:id")
					.setParameter("id", id).uniqueResult();
			session.getTransaction().commit();
			return resultat;
		} catch (RuntimeException e) {
			e.printStackTrace();
			return null;
		}
	}

	public static boolean DeleteRendezVous(int id) {
		// TODO Auto-generated method stub
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction trns = null;
		boolean delete = false;
		try {
            trns = session.beginTransaction();
           Rendezvous rendezvous= (Rendezvous)session.createCriteria(Rendezvous.class).add(Restrictions.eq("id", id)).uniqueResult();
            session.delete(rendezvous);
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