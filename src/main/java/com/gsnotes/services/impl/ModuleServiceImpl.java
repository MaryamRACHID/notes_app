package com.gsnotes.services.impl;

import com.gsnotes.bo.Module;
import com.gsnotes.dao.IModuleDao;
import com.gsnotes.services.IModuleService;
import com.gsnotes.utils.export.ExcelExporter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class ModuleServiceImpl implements IModuleService {

	@Autowired
	private IModuleDao moduleDao;

	@Autowired
	public List<Module> getAllModules() {

		return moduleDao.findAll();
	}


	public Module getModuleById(Long IdModule) {
		return moduleDao.getById(IdModule);

	}

	@Override
	public ExcelExporter prepareModuleExport(List<Module> modules) {
		return null;
	}

	@Override
	public ExcelExporter prepareModuleExport(Module modules) {
		return null;
	}


}
