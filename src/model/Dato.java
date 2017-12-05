package model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the DATOS database table.
 * 
 */
@Entity
@Table(name="DATOS")
@NamedQuery(name="Dato.findAll", query="SELECT d FROM Dato d")
public class Dato implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="DATOS_ID")
	private int datosId;

	@Column(name="AMATERNO")
	private String amaterno;

	@Column(name="APATERNO")
	private String apaterno;

	@Column(name="COLONIA")
	private String colonia;

	@Column(name="DIRECCION")
	private String direccion;

	@Column(name="ESTADO")
	private String estado;

	@Column(name="MUNICIPIO")
	private String municipio;

	@Column(name="NOMBRE")
	private String nombre;

	public Dato() {
	}

	public int getDatosId() {
		return this.datosId;
	}

	public void setDatosId(int datosId) {
		this.datosId = datosId;
	}

	public String getAmaterno() {
		return this.amaterno;
	}

	public void setAmaterno(String amaterno) {
		this.amaterno = amaterno;
	}

	public String getApaterno() {
		return this.apaterno;
	}

	public void setApaterno(String apaterno) {
		this.apaterno = apaterno;
	}

	public String getColonia() {
		return this.colonia;
	}

	public void setColonia(String colonia) {
		this.colonia = colonia;
	}

	public String getDireccion() {
		return this.direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getEstado() {
		return this.estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public String getMunicipio() {
		return this.municipio;
	}

	public void setMunicipio(String municipio) {
		this.municipio = municipio;
	}

	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

}