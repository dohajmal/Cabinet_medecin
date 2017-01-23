package tn.iit.dao;

import java.util.List;

import org.hibernate.Session;

import tn.iit.model.Ordonnance;
import tn.iit.model.Patient;
import tn.iit.util.HibernateUtil;

public class OrdonnanceDAO {
	Session session = HibernateUtil.sessionFactory.openSession();

	public List<Ordonnance> findAll() {
		return session.createQuery("SELECT o FROM Ordonnance o").list();

	}
	public Ordonnance findAllId(int id) {
		return (Ordonnance) session.createQuery("SELECT o FROM Ordonnance o where o.id=:id").setParameter("id",id).uniqueResult();

	}

}
