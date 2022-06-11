package com.gsnotes.services;

import com.gsnotes.bo.InscriptionMatiere;
import com.gsnotes.bo.InscriptionModule;

import java.util.List;


public interface IInscripModuleService {


	public List<InscriptionModule> getAllInscription();

	public InscriptionModule getInscripByidModule(Long idModule);

}
