package com.gsnotes.services;

import com.gsnotes.bo.Module;
import com.gsnotes.bo.Niveau;
import com.gsnotes.utils.export.ExcelExporter;

import java.util.List;

public interface INiveauService {


	public List<Niveau> getAllNiveau();


	public Niveau getModuleById(Long idNiveau);

	public ExcelExporter prepareNiveauExport(List<Niveau> niveau);


	///////////////////////////////////////////////////////
	public ExcelExporter prepareNiveauExport(Niveau niveau);


	

}
