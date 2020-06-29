package knk;

import java.util.ArrayList;
import java.util.List;
import java.sql.*;

public class Orari {

	private int id;
	private String titlenda;
	private int ects;
	private String profcol;
	private String asscol;

	private String ldita;
	private String lora;
	private int lsalla;

	private String udita;
	private String uora;
	private int usalla;

	private String nstud;
	private String departamenti;
	private String sem;
	private String grupi;

	public Orari(int id, String titlenda, int ects, String profcol, String asscol, String ldita, String lora,
			int lsalla, String udita, String uora, int usalla, String nstud, String departamenti, String sem,
			String grupi) {
		this.id = id;
		this.titlenda = titlenda;
		this.ects = ects;
		this.profcol = profcol;
		this.asscol = asscol;
		this.ldita = ldita;
		this.lora = lora;
		this.lsalla = lsalla;
		this.udita = udita;
		this.uora = uora;
		this.usalla = usalla;
		this.nstud = nstud;
		this.departamenti = departamenti;
		this.sem = sem;
		this.grupi = grupi;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
