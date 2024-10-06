package pe.senati.entity;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ForeignKey;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

@Entity
@Table(name="productos")
public class Producto implements Serializable
{
	private static final long serialVersionUID=1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer producto_id; //columna producto_id PK auto-incrementable
	
	@Column
	private String nombre;
	
	@Column
	private String marca;
	
	@Column
	private Double precio;
	
	@DateTimeFormat(pattern="yyyy-MM-dd",iso=ISO.DATE)
	private LocalDate ffabricacion;
	
	@DateTimeFormat(pattern="yyyy-MM-dd",iso=ISO.DATE)
	private LocalDate fvencimiento;
	
	@Column(name="cantidad")
	private Integer stock;
	
	@ManyToOne
	@JoinColumn(name="categoria_id",nullable=false)
	private Categoria categoria;
	
	@ManyToMany
	@JoinTable(name="productos_proveedores",
		joinColumns=@JoinColumn(name="producto_id"),
		inverseJoinColumns=@JoinColumn(name="proveedor_id"))
	private Set<Proveedor> itemsProveedor=new HashSet<>();
	
	public Producto() {}

	public Producto(Integer producto_id, String nombre, String marca, Double precio, LocalDate ffabricacion,
			LocalDate fvencimiento, Integer stock) {
		this.producto_id = producto_id;
		this.nombre = nombre;
		this.marca = marca;
		this.precio = precio;
		this.ffabricacion = ffabricacion;
		this.fvencimiento = fvencimiento;
		this.stock = stock;
	}

	public Integer getProducto_id() {
		return producto_id;
	}

	public void setProducto_id(Integer producto_id) {
		this.producto_id = producto_id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getMarca() {
		return marca;
	}

	public void setMarca(String marca) {
		this.marca = marca;
	}

	public Double getPrecio() {
		return precio;
	}

	public void setPrecio(Double precio) {
		this.precio = precio;
	}

	public LocalDate getFfabricacion() {
		return ffabricacion;
	}

	public void setFfabricacion(LocalDate ffabricacion) {
		this.ffabricacion = ffabricacion;
	}

	public LocalDate getFvencimiento() {
		return fvencimiento;
	}

	public void setFvencimiento(LocalDate fvencimiento) {
		this.fvencimiento = fvencimiento;
	}

	public Integer getStock() {
		return stock;
	}

	public void setStock(Integer stock) {
		this.stock = stock;
	}

	public Categoria getCategoria() {
		return categoria;
	}

	public void setCategoria(Categoria categoria) {
		this.categoria = categoria;
	}

	public Set<Proveedor> getItemsProveedor() {
		return itemsProveedor;
	}

	public void setItemsProveedor(Set<Proveedor> itemsProveedor) {
		this.itemsProveedor = itemsProveedor;
	}
}
