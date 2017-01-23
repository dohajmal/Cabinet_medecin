package tn.iit.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the fichierpatient database table.
 * 
 */
@Entity
@NamedQuery(name="Fichierpatient.findAll", query="SELECT f FROM Fichierpatient f")
public class Fichierpatient implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int id;

	@Temporal(TemporalType.DATE)
	private Date dateDernierRendezVous;

	@Temporal(TemporalType.DATE)
	private Date dateNaissPatient;

	private String etatCivil;

	private String mail;

	private String maladie;

	private String medicament;

	private String nationnalite;

	private String nomPatient;

	private String prenomPatient;

	private String sexePatient;

	private int telephone;

	private String ville;

	//bi-directional many-to-one association to Patient
	@ManyToOne
	@JoinColumn(name="id_patient")
	private Patient patient;

	public Fichierpatient() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getDateDernierRendezVous() {
		return this.dateDernierRendezVous;
	}

	public void setDateDernierRendezVous(Date dateDernierRendezVous) {
		this.dateDernierRendezVous = dateDernierRendezVous;
	}

	public Date getDateNaissPatient() {
		return this.dateNaissPatient;
	}

	public void setDateNaissPatient(Date dateNaissPatient) {
		this.dateNaissPatient = dateNaissPatient;
	}

	public String getEtatCivil() {
		return this.etatCivil;
	}

	public void setEtatCivil(String etatCivil) {
		this.etatCivil = etatCivil;
	}

	public String getMail() {
		return this.mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getMaladie() {
		return this.maladie;
	}

	public void setMaladie(String maladie) {
		this.maladie = maladie;
	}

	public String getMedicament() {
		return this.medicament;
	}

	public void setMedicament(String medicament) {
		this.medicament = medicament;
	}

	public String getNationnalite() {
		return this.nationnalite;
	}

	public void setNationnalite(String nationnalite) {
		this.nationnalite = nationnalite;
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

	public String getSexePatient() {
		return this.sexePatient;
	}

	public void setSexePatient(String sexePatient) {
		this.sexePatient = sexePatient;
	}

	public int getTelephone() {
		return this.telephone;
	}

	public void setTelephone(int telephone) {
		this.telephone = telephone;
	}

	public String getVille() {
		return this.ville;
	}

	public void setVille(String ville) {
		this.ville = ville;
	}

	public Patient getPatient() {
		return this.patient;
	}

	public void setPatient(Patient patient) {
		this.patient = patient;
	}

}