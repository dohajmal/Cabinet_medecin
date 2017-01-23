package tn.iit.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the medicament database table.
 * 
 */
@Entity
@NamedQuery(name="Medicament.findAll", query="SELECT m FROM Medicament m")
public class Medicament implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int id;

	private String nomMedicament;

	//bi-directional many-to-one association to Ordonnance
	@ManyToOne
	@JoinColumn(name="idOrdonnance")
	private Ordonnance ordonnance;

	public Medicament() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNomMedicament() {
		return this.nomMedicament;
	}

	public void setNomMedicament(String nomMedicament) {
		this.nomMedicament = nomMedicament;
	}

	public Ordonnance getOrdonnance() {
		return this.ordonnance;
	}

	public void setOrdonnance(Ordonnance ordonnance) {
		this.ordonnance = ordonnance;
	}

}