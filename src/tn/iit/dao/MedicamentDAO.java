package tn.iit.dao;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import tn.iit.model.Medicament;
import tn.iit.util.HibernateUtil;

public class MedicamentDAO {
	Session session = HibernateUtil.sessionFactory.openSession();

public List<Medicament> findAll() {
	return session.createQuery("SELECT m FROM Medicament m").list();

}

public Medicament addMedicament(Medicament medic) {

	try {
		session.beginTransaction();
		session.save(medic);
		session.flush();
		session.getTransaction().commit();
	} catch (Exception e) {
		e.printStackTrace();
		e.getMessage();
	}
	return medic;
}

public static void modifierMedicament(HttpServletResponse response,int id, String nomMedicament) {
	Session session = HibernateUtil.getSessionFactory().openSession();

	try {

		session.beginTransaction();
		Medicament Medic = (Medicament) session.get(Medicament.class, id);
		Medic.setNomMedicament(nomMedicament);

		session.update(Medic);
		session.getTransaction().commit();
	} catch (RuntimeException e) {
		e.printStackTrace();
	} finally {
		session.flush();
		session.close();
	}
}

public static Medicament getMedicamentById(int id) {
	Session session = HibernateUtil.sessionFactory.openSession();

	try {
		session.beginTransaction();
		Medicament resultat = (Medicament) session
				.createQuery("SELECT m FROM Medicament m where m.id=:id").setParameter("id", id).uniqueResult();
		session.getTransaction().commit();
		return resultat;
	} catch (RuntimeException e) {
		e.printStackTrace();
		return null;
	}
}

public static void deleteMedicament(int id) {
	Session session = HibernateUtil.getSessionFactory().openSession();
	Transaction trns = null;
	try {
		trns = session.beginTransaction();
		Medicament Medic = (Medicament) session.createCriteria(Medicament.class)
				.add(Restrictions.eq("id", id)).uniqueResult();
		session.delete(Medic);
		session.getTransaction().commit();
	} catch (RuntimeException e) {
		if (trns != null) {
			trns.rollback();
		}
		e.printStackTrace();
	}
}

}

