package tn.iit.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;
import java.util.List;


/**
 * The persistent class for the ordonnance database table.
 * 
 */
@Entity
@NamedQuery(name="Ordonnance.findAll", query="SELECT o FROM Ordonnance o")
public class Ordonnance implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int id;

	@Temporal(TemporalType.DATE)
	private Date date;

	private String description;

	private String nomMedecin;

	private String nomMedicament;

	private String prenomPatient;

	private int quantite;

	//bi-directional many-to-one association to Certificatderepo
	@OneToMany(mappedBy="ordonnance")
	private List<Certificatderepo> certificatderepos;

	//bi-directional many-to-one association to Certificatsmedicaux
	@OneToMany(mappedBy="ordonnance")
	private List<Certificatsmedicaux> certificatsmedicauxs;

	//bi-directional many-to-one association to Medicament
	@OneToMany(mappedBy="ordonnance")
	private List<Medicament> medicaments;

	//bi-directional many-to-one association to Consultation
	@ManyToOne
	@JoinColumn(name="idConsultation")
	private Consultation consultation;

	public Ordonnance() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getDate() {
		return this.date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getNomMedecin() {
		return this.nomMedecin;
	}

	public void setNomMedecin(String nomMedecin) {
		this.nomMedecin = nomMedecin;
	}

	public String getNomMedicament() {
		return this.nomMedicament;
	}

	public void setNomMedicament(String nomMedicament) {
		this.nomMedicament = nomMedicament;
	}

	public String getPrenomPatient() {
		return this.prenomPatient;
	}

	public void setPrenomPatient(String prenomPatient) {
		this.prenomPatient = prenomPatient;
	}

	public int getQuantite() {
		return this.quantite;
	}

	public void setQuantite(int quantite) {
		this.quantite = quantite;
	}

	public List<Certificatderepo> getCertificatderepos() {
		return this.certificatderepos;
	}

	public void setCertificatderepos(List<Certificatderepo> certificatderepos) {
		this.certificatderepos = certificatderepos;
	}

	public Certificatderepo addCertificatderepo(Certificatderepo certificatderepo) {
		getCertificatderepos().add(certificatderepo);
		certificatderepo.setOrdonnance(this);

		return certificatderepo;
	}

	public Certificatderepo removeCertificatderepo(Certificatderepo certificatderepo) {
		getCertificatderepos().remove(certificatderepo);
		certificatderepo.setOrdonnance(null);

		return certificatderepo;
	}

	public List<Certificatsmedicaux> getCertificatsmedicauxs() {
		return this.certificatsmedicauxs;
	}

	public void setCertificatsmedicauxs(List<Certificatsmedicaux> certificatsmedicauxs) {
		this.certificatsmedicauxs = certificatsmedicauxs;
	}

	public Certificatsmedicaux addCertificatsmedicaux(Certificatsmedicaux certificatsmedicaux) {
		getCertificatsmedicauxs().add(certificatsmedicaux);
		certificatsmedicaux.setOrdonnance(this);

		return certificatsmedicaux;
	}

	public Certificatsmedicaux removeCertificatsmedicaux(Certificatsmedicaux certificatsmedicaux) {
		getCertificatsmedicauxs().remove(certificatsmedicaux);
		certificatsmedicaux.setOrdonnance(null);

		return certificatsmedicaux;
	}

	public List<Medicament> getMedicaments() {
		return this.medicaments;
	}

	public void setMedicaments(List<Medicament> medicaments) {
		this.medicaments = medicaments;
	}

	public Medicament addMedicament(Medicament medicament) {
		getMedicaments().add(medicament);
		medicament.setOrdonnance(this);

		return medicament;
	}

	public Medicament removeMedicament(Medicament medicament) {
		getMedicaments().remove(medicament);
		medicament.setOrdonnance(null);

		return medicament;
	}

	public Consultation getConsultation() {
		return this.consultation;
	}

	public void setConsultation(Consultation consultation) {
		this.consultation = consultation;
	}

}