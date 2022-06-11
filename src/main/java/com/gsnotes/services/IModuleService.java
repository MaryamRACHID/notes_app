package com.gsnotes.services;

import com.gsnotes.bo.Module;
import com.gsnotes.bo.Utilisateur;
import com.gsnotes.utils.export.ExcelExporter;

import java.util.List;

public interface IModuleService {


	public List<Module> getAllModules();


	public Module getModuleById(Long idModule);

	public ExcelExporter prepareModuleExport(List<Module> modules);


	///////////////////////////////////////////////////////
	public ExcelExporter prepareModuleExport(Module modules);


	

}
