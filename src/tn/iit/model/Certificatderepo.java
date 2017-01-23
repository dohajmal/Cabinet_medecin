package tn.iit.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the certificatderepos database table.
 * 
 */
@Entity
@Table(name="certificatderepos")
@NamedQuery(name="Certificatderepo.findAll", query="SELECT c FROM Certificatderepo c")
public class Certificatderepo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int id;

	@Temporal(TemporalType.DATE)
	private Date dataNaiss;

	@Temporal(TemporalType.DATE)
	private Date dateDebut;

	@Temporal(TemporalType.DATE)
	private Date dateFin;

	private String description;

	private int nbreJour;

	private String nomMedecin;

	private String nomPatient;

	private String prenomPatient;

	//bi-directional many-to-one association to Ordonnance
	@ManyToOne
	@JoinColumn(name="idOrdonnance")
	private Ordonnance ordonnance;

	public Certificatderepo() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getDataNaiss() {
		return this.dataNaiss;
	}

	public void setDataNaiss(Date dataNaiss) {
		this.dataNaiss = dataNaiss;
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

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getNbreJour() {
		return this.nbreJour;
	}

	public void setNbreJour(int nbreJour) {
		this.nbreJour = nbreJour;
	}

	public String getNomMedecin() {
		return this.nomMedecin;
	}

	public void setNomMedecin(String nomMedecin) {
		this.nomMedecin = nomMedecin;
	}

	public String getNomPatient() {
		return this.nomPatient;
	}

	public void setNomPatient(String nomPatient) {
		this.nomPatient = nomPatient;
	}

	public String getPrenomPatient() {
		return this.prenomPatient;
	}

	public void setPrenomPatient(String prenomPatient) {
		this.prenomPatient = prenomPatient;
	}

	public Ordonnance getOrdonnance() {
		return this.ordonnance;
	}

	public void setOrdonnance(Ordonnance ordonnance) {
		this.ordonnance = ordonnance;
	}

}