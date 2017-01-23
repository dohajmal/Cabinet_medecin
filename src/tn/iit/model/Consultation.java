package tn.iit.model;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Time;
import java.util.Date;
import java.util.List;


/**
 * The persistent class for the consultation database table.
 * 
 */
@Entity
@NamedQuery(name="Consultation.findAll", query="SELECT c FROM Consultation c")
public class Consultation implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int id;

	@Temporal(TemporalType.DATE)
	private Date dateDebut;

	@Temporal(TemporalType.DATE)
	private Date dateFin;

	private Time heureDebut;

	private Time heureFin;

	private String remarque;

	//bi-directional many-to-one association to Rendezvous
	@ManyToOne
	@JoinColumn(name="idRendezVous")
	private Rendezvous rendezvous;

	//bi-directional many-to-one association to Medecin
	@ManyToOne
	@JoinColumn(name="idMedecin")
	private Medecin medecin;

	//bi-directional many-to-one association to Ordonnance
	@OneToMany(mappedBy="consultation")
	private List<Ordonnance> ordonnances;

	public Consultation() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getDateDebut() {
		return this.dateDebut;
	}

	public void setDateDebut(Date dateDebut) {
		this.dateDebut = dateDebut;
	}

	public Date getDateFin() {
		return this.dateFin;
	}

	public void setDateFin(Date dateFin) {
		this.dateFin = dateFin;
	}

	public Time getHeureDebut() {
		return this.heureDebut;
	}

	public void setHeureDebut(Time heureDebut) {
		this.heureDebut = heureDebut;
	}

	public Time getHeureFin() {
		return this.heureFin;
	}

	public void setHeureFin(Time heureFin) {
		this.heureFin = heureFin;
	}

	public String getRemarque() {
		return this.remarque;
	}

	public void setRemarque(String remarque) {
		this.remarque = remarque;
	}

	public Rendezvous getRendezvous() {
		return this.rendezvous;
	}

	public void setRendezvous(Rendezvous rendezvous) {
		this.rendezvous = rendezvous;
	}

	public Medecin getMedecin() {
		return this.medecin;
	}

	public void setMedecin(Medecin medecin) {
		this.medecin = medecin;
	}

	public List<Ordonnance> getOrdonnances() {
		return this.ordonnances;
	}

	public void setOrdonnances(List<Ordonnance> ordonnances) {
		this.ordonnances = ordonnances;
	}

	public Ordonnance addOrdonnance(Ordonnance ordonnance) {
		getOrdonnances().add(ordonnance);
		ordonnance.setConsultation(this);

		return ordonnance;
	}

	public Ordonnance removeOrdonnance(Ordonnance ordonnance) {
		getOrdonnances().remove(ordonnance);
		ordonnance.setConsultation(null);

		return ordonnance;
	}

}