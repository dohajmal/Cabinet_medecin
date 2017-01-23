package tn.iit.dao;

import java.util.List;

import org.hibernate.Session;

import tn.iit.model.Medicament;
import tn.iit.model.Patient;
import tn.iit.util.HibernateUtil;


public class PatientDAO {
	Session session = HibernateUtil.sessionFactory.openSession();

	public List<Patient> findAll() {
		return session.createQuery("SELECT p FROM Patient p").list();

	}
	public Patient findAllId(int id) {
		return (Patient) session.createQuery("SELECT p FROM Patient p where p.id=:id").setParameter("id",id).uniqueResult();

	}

public Patient addPatient(Patient patient) {

	try {
		session.beginTransaction();
		session.save(patient);
		session.flush();
		session.getTransaction().commit();
	} catch (Exception e) {
		e.printStackTrace();
		e.getMessage();
	}
	return patient;
}

	
	
}
