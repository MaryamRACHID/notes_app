package com.gsnotes.services;

import com.gsnotes.bo.Compte;
import com.gsnotes.bo.InscriptionAnnuelle;
import com.gsnotes.bo.Role;
import com.gsnotes.utils.export.ExcelExporter;

import java.util.List;


public interface IInscripAnnuelleService {


	public List<InscriptionAnnuelle> getAllInscription();

	public InscriptionAnnuelle getInscripByidNiveau(Long idNiveau);

}
