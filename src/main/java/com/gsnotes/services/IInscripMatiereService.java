package com.gsnotes.services;

import com.gsnotes.bo.InscriptionAnnuelle;
import com.gsnotes.bo.InscriptionMatiere;

import java.util.List;


public interface IInscripMatiereService {


	public List<InscriptionMatiere> getAllInscription();

	public InscriptionMatiere getInscripByidModule(Long idNiveau);

}
