package tn.iit.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the certificatsmedicaux database table.
 * 
 */
@Entity
@NamedQuery(name="Certificatsmedicaux.findAll", query="SELECT c FROM Certificatsmedicaux c")
public class Certificatsmedicaux implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int id;

	@Column(name="capacite_efforts")
	private String capaciteEfforts;

	private String cause;

	@Temporal(TemporalType.DATE)
	private Date dataNaiss;

	@Temporal(TemporalType.DATE)
	private Date dateDebut;

	@Temporal(TemporalType.DATE)
	private Date dateFin;

	private String description;

	@Column(name="fonction_suivant")
	private String fonctionSuivant;

	private int nbreJour;

	private String nomMedecin;

	private String nomPatient;

	private String prenomPatient;

	private String remarque;

	@Column(name="sitation_exercice")
	private String sitationExercice;

	@Column(name="type_efforts")
	private String typeEfforts;

	@Column(name="type_mouvements")
	private String typeMouvements;

	//bi-directional many-to-one association to Ordonnance
	@ManyToOne
	@JoinColumn(name="idOrdonnance")
	private Ordonnance ordonnance;

	public Certificatsmedicaux() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCapaciteEfforts() {
		return this.capaciteEfforts;
	}

	public void setCapaciteEfforts(String capaciteEfforts) {
		this.capaciteEfforts = capaciteEfforts;
	}

	public String getCause() {
		return this.cause;
	}

	public void setCause(String cause) {
		this.cause = cause;
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

	public String getFonctionSuivant() {
		return this.fonctionSuivant;
	}

	public void setFonctionSuivant(String fonctionSuivant) {
		this.fonctionSuivant = fonctionSuivant;
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

	public String getRemarque() {
		return this.remarque;
	}

	public void setRemarque(String remarque) {
		this.remarque = remarque;
	}

	public String getSitationExercice() {
		return this.sitationExercice;
	}

	public void setSitationExercice(String sitationExercice) {
		this.sitationExercice = sitationExercice;
	}

	public String getTypeEfforts() {
		return this.typeEfforts;
	}

	public void setTypeEfforts(String typeEfforts) {
		this.typeEfforts = typeEfforts;
	}

	public String getTypeMouvements() {
		return this.typeMouvements;
	}

	public void setTypeMouvements(String typeMouvements) {
		this.typeMouvements = typeMouvements;
	}

	public Ordonnance getOrdonnance() {
		return this.ordonnance;
	}

	public void setOrdonnance(Ordonnance ordonnance) {
		this.ordonnance = ordonnance;
	}

}