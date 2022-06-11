package com.gsnotes.services;

import com.gsnotes.bo.Utilisateur;
import com.gsnotes.utils.export.ExcelExporter;
import com.gsnotes.web.models.ExporterModel;

import java.util.List;

public interface IExporterModelService {



	public List<Utilisateur> getAllPersons();

	public Utilisateur getPersonById(Long id);
	
	public Utilisateur getPersonByCin(String cin);
	
	public ExcelExporter preparePersonExport(ExporterModel model);
	
	

}
