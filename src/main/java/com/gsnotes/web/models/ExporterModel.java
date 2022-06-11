package com.gsnotes.web.models;

import com.gsnotes.bo.*;

import java.util.List;

//Classe model utilisé dans la partie web
// pour recevoir les données de la vue 
//utilisée pour créer les comptes
//C'est une classe non persistante
public class ExporterModel {

	private String nom;
	private String prenom;
	private Long roleId;
	private Long personId;

	private String titreModule;

	private List<Element> elements;

	private String titreNiveau;
	private String cne;

	private String sessionUniv;

	private String semestre;

	private List<Etudiant> Liste;

	private  InscriptionAnnuelle inscrip;

	private InscriptionMatiere inscriptionMatiere;

	private InscriptionModule inscriptionModule;

	public ExporterModel() {
	}

	public ExporterModel(String titreModule) {
		this.titreModule = titreModule;
	}


	public ExporterModel(Long roleId, Long personId) {
		this.roleId = roleId;
		this.personId = personId;
	}

	public ExporterModel(String nom, String prenom, Long roleId, Long personId, String titreModule, String titreNiveau, String cne) {
		this.nom = nom;
		this.prenom = prenom;
		this.roleId = roleId;
		this.personId = personId;
		this.titreModule = titreModule;
		this.titreNiveau = titreNiveau;
		this.cne = cne;
	}

	public String getNom() { return nom; }
	public void setNom(String nom) { this.nom = nom; }

	public String getPrenom() { return prenom; }
	public void setPrenom(String prenom) { this.prenom = prenom; }

	public Long getRoleId() {
		return roleId;
	}
	public void setRoleId(Long roleId) {
		this.roleId = roleId;
	}

	public Long getPersonId() {
		return personId;
	}
	public void setPersonId(Long personId) {
		this.personId = personId;}

	public String getTitreModule() { return titreModule; }
	public void setTitreModule(String titreModule) { this.titreModule = titreModule; }

	public String getTitreNiveau() { return titreNiveau; }
	public void setTitreNiveau(String idNiveau) { this.titreNiveau = idNiveau; }

	public String getCNE() { return cne; }
	public void setCNE(String cne) { this.cne = cne; }

	public List<Etudiant> getListe(){
		return this.Liste;
	}

	public void setListe(List<Etudiant> Liste){
		this.Liste = Liste;
	}

	public InscriptionAnnuelle getInscrip(){
		return this.inscrip;
	}

	public void setInscripListe(InscriptionAnnuelle inscrip){
		this.inscrip = inscrip;
	}

	public String getsessionUniv(){ return this.sessionUniv;}

	public void setSessionUniv(String sessionUniv){ this.sessionUniv = sessionUniv;}



	public InscriptionMatiere getinscriptionMatiere(){
		return this.inscriptionMatiere;
	}

	public void setinscriptionMatiere(InscriptionMatiere inscriptionMatiere){
		this.inscriptionMatiere = inscriptionMatiere;
	}

	public InscriptionModule getInscriptionModule(){
		return this.inscriptionModule;
	}

	public void setinscriptionMatiere(InscriptionModule inscriptionModule){
		this.inscriptionModule = inscriptionModule;
	}

	public List<Element> getElements(){ return this.elements;}
	public void setElements(List<Element> elements){ this.elements = elements;}


	public String getSemestre(){ return  this.semestre;}

	public void setSemestre(String s){ this.semestre = s;}

}
