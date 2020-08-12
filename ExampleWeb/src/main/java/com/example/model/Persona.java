package com.example.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Persona {
	@Id
	private int idPersona;
	
	@Column(name="apellido")
    private String apellido;
	
	@Column(name="nombre")
	private String nombre;
	
	@Column(name="legajo")
	private String legajo;
	
	@Column(name="sexo")
	private String sexo;
	
	@Column(name="email")
	private String email;

	public Persona() {
		super();
	}
	
	public Persona(int idPersona, String nombre) {
		this();
		this.idPersona = idPersona;
		this.nombre = nombre;
	}
	
//MARK Getter y Setter
	public int getIdPersona() {
		return idPersona;
	}
	public void setIdPersona(int idPersona) {
		this.idPersona = idPersona;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	public String getLegajo() {
		return legajo;
	}

	public void setLegajo(String legajo) {
		this.legajo = legajo;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
}
