package model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the GRUPOS database table.
 * 
 */
@Entity
@Table(name="GRUPOS")
//@NamedQuery(name="Grupo.findAll", query="SELECT g FROM Grupo g")
@NamedQueries
({
	@NamedQuery(name="Grupo.findAll", query="SELECT g FROM Grupo g"),
	@NamedQuery(name="Grupo.findbyid", query="SELECT g FROM Grupo g where g.gruposId = :id")
})
public class Grupo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="GRUPOS_ID")
	private int gruposId;

	@Column(name="` DESCRIPCION`")
	private String _descripcion;

	public Grupo() {
	}

	public int getGruposId() {
		return this.gruposId;
	}

	public void setGruposId(int gruposId) {
		this.gruposId = gruposId;
	}

	public String get_descripcion() {
		return this._descripcion;
	}

	public void set_descripcion(String _descripcion) {
		this._descripcion = _descripcion;
	}

}