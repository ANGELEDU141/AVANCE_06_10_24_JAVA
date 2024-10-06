package pe.senati.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="jefes")
public class Jefe implements Serializable
{
	private static final long serialVersionUID=1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer jefe_id;
	
	@Column
	private String nombre;
	
	@Column
	private String apellidos;
	
	@Column(unique=true,nullable=false)
	private String nro_celular;
	
	@Column
	private String nacionalidad;
	
	@OneToOne(mappedBy="jefe")
	private Categoria categoria;
	
	public Jefe() {}

	public Jefe(Integer jefe_id, String nombre, String apellidos, String nro_celular, String nacionalidad) {
		this.jefe_id = jefe_id;
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.nro_celular = nro_celular;
		this.nacionalidad = nacionalidad;
	}

	public Integer getJefe_id() {
		return jefe_id;
	}

	public void setJefe_id(Integer jefe_id) {
		this.jefe_id = jefe_id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public String getNro_celular() {
		return nro_celular;
	}

	public void setNro_celular(String nro_celular) {
		this.nro_celular = nro_celular;
	}

	public String getNacionalidad() {
		return nacionalidad;
	}

	public void setNacionalidad(String nacionalidad) {
		this.nacionalidad = nacionalidad;
	}

	public Categoria getCategoria() {
		return categoria;
	}

	public void setCategoria(Categoria categoria) {
		this.categoria = categoria;
	}
}
