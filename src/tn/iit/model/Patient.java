package tn.iit.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;
import java.util.List;


/**
 * The persistent class for the patient database table.
 * 
 */
@Entity
@NamedQuery(name="Patient.findAll", query="SELECT p FROM Patient p")
public class Patient implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int id;

	private int cin;

	private int codePostal;

	@Temporal(TemporalType.DATE)
	private Date dateNaissance;

	private String etatCivil;

	private String lieu;

	private String login;

	private String mail;

	private String motPasse;

	private String nationalite;

	private String nom;

	private String pays;

	private String prenom;

	private String sexe;

	private int telephone;

	private String ville;

	//bi-directional many-to-one association to Fichierpatient
	@OneToMany(mappedBy="patient")
	private List<Fichierpatient> fichierpatients;

	//bi-directional many-to-one association to Utilisateur
	@ManyToOne
	@JoinColumn(name="id_user")
	private Utilisateur utilisateur;

	//bi-directional many-to-one association to Rendezvous
	@OneToMany(mappedBy="patient")
	private List<Rendezvous> rendezvouses;

	public Patient() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCin() {
		return this.cin;
	}

	public void setCin(int cin) {
		this.cin = cin;
	}

	public int getCodePostal() {
		return this.codePostal;
	}

	public void setCodePostal(int codePostal) {
		this.codePostal = codePostal;
	}

	public Date getDateNaissance() {
		return this.dateNaissance;
	}

	public void setDateNaissance(Date dateNaissance) {
		this.dateNaissance = dateNaissance;
	}

	public String getEtatCivil() {
		return this.etatCivil;
	}

	public void setEtatCivil(String etatCivil) {
		this.etatCivil = etatCivil;
	}

	public String getLieu() {
		return this.lieu;
	}

	public void setLieu(String lieu) {
		this.lieu = lieu;
	}

	public String getLogin() {
		return this.login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getMail() {
		return this.mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getMotPasse() {
		return this.motPasse;
	}

	public void setMotPasse(String motPasse) {
		this.motPasse = motPasse;
	}

	public String getNationalite() {
		return this.nationalite;
	}

	public void setNationalite(String nationalite) {
		this.nationalite = nationalite;
	}

	public String getNom() {
		return this.nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPays() {
		return this.pays;
	}

	public void setPays(String pays) {
		this.pays = pays;
	}

	public String getPrenom() {
		return this.prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getSexe() {
		return this.sexe;
	}

	public void setSexe(String sexe) {
		this.sexe = sexe;
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

	public List<Fichierpatient> getFichierpatients() {
		return this.fichierpatients;
	}

	public void setFichierpatients(List<Fichierpatient> fichierpatients) {
		this.fichierpatients = fichierpatients;
	}

	public Fichierpatient addFichierpatient(Fichierpatient fichierpatient) {
		getFichierpatients().add(fichierpatient);
		fichierpatient.setPatient(this);

		return fichierpatient;
	}

	public Fichierpatient removeFichierpatient(Fichierpatient fichierpatient) {
		getFichierpatients().remove(fichierpatient);
		fichierpatient.setPatient(null);

		return fichierpatient;
	}

	public Utilisateur getUtilisateur() {
		return this.utilisateur;
	}

	public void setUtilisateur(Utilisateur utilisateur) {
		this.utilisateur = utilisateur;
	}

	public List<Rendezvous> getRendezvouses() {
		return this.rendezvouses;
	}

	public void setRendezvouses(List<Rendezvous> rendezvouses) {
		this.rendezvouses = rendezvouses;
	}

	public Rendezvous addRendezvous(Rendezvous rendezvous) {
		getRendezvouses().add(rendezvous);
		rendezvous.setPatient(this);

		return rendezvous;
	}

	public Rendezvous removeRendezvous(Rendezvous rendezvous) {
		getRendezvouses().remove(rendezvous);
		rendezvous.setPatient(null);

		return rendezvous;
	}

}