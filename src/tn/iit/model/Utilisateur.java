package tn.iit.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the utilisateur database table.
 * 
 */
@Entity
@NamedQuery(name="Utilisateur.findAll", query="SELECT u FROM Utilisateur u")
public class Utilisateur implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="id_user")
	private int idUser;

	private String login;

	private String password;

	private String type;

	//bi-directional many-to-one association to Administrateur
	@OneToMany(mappedBy="utilisateur")
	private List<Administrateur> administrateurs;

	//bi-directional many-to-one association to Medecin
	@OneToMany(mappedBy="utilisateur")
	private List<Medecin> medecins;

	//bi-directional many-to-one association to Patient
	@OneToMany(mappedBy="utilisateur")
	private List<Patient> patients;

	//bi-directional many-to-one association to Secretaire
	@OneToMany(mappedBy="utilisateur")
	private List<Secretaire> secretaires;

	public Utilisateur() {
	}

	public int getIdUser() {
		return this.idUser;
	}

	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}

	public String getLogin() {
		return this.login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public List<Administrateur> getAdministrateurs() {
		return this.administrateurs;
	}

	public void setAdministrateurs(List<Administrateur> administrateurs) {
		this.administrateurs = administrateurs;
	}

	public Administrateur addAdministrateur(Administrateur administrateur) {
		getAdministrateurs().add(administrateur);
		administrateur.setUtilisateur(this);

		return administrateur;
	}

	public Administrateur removeAdministrateur(Administrateur administrateur) {
		getAdministrateurs().remove(administrateur);
		administrateur.setUtilisateur(null);

		return administrateur;
	}

	public List<Medecin> getMedecins() {
		return this.medecins;
	}

	public void setMedecins(List<Medecin> medecins) {
		this.medecins = medecins;
	}

	public Medecin addMedecin(Medecin medecin) {
		getMedecins().add(medecin);
		medecin.setUtilisateur(this);

		return medecin;
	}

	public Medecin removeMedecin(Medecin medecin) {
		getMedecins().remove(medecin);
		medecin.setUtilisateur(null);

		return medecin;
	}

	public List<Patient> getPatients() {
		return this.patients;
	}

	public void setPatients(List<Patient> patients) {
		this.patients = patients;
	}

	public Patient addPatient(Patient patient) {
		getPatients().add(patient);
		patient.setUtilisateur(this);

		return patient;
	}

	public Patient removePatient(Patient patient) {
		getPatients().remove(patient);
		patient.setUtilisateur(null);

		return patient;
	}

	public List<Secretaire> getSecretaires() {
		return this.secretaires;
	}

	public void setSecretaires(List<Secretaire> secretaires) {
		this.secretaires = secretaires;
	}

	public Secretaire addSecretaire(Secretaire secretaire) {
		getSecretaires().add(secretaire);
		secretaire.setUtilisateur(this);

		return secretaire;
	}

	public Secretaire removeSecretaire(Secretaire secretaire) {
		getSecretaires().remove(secretaire);
		secretaire.setUtilisateur(null);

		return secretaire;
	}

}