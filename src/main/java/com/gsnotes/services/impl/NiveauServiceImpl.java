package com.gsnotes.services.impl;

import com.gsnotes.bo.Module;
import com.gsnotes.bo.Niveau;
import com.gsnotes.dao.INiveauDao;
import com.gsnotes.services.INiveauService;
import com.gsnotes.utils.export.ExcelExporter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class NiveauServiceImpl implements INiveauService {

	@Autowired
	private INiveauDao NiveauDao;

	@Autowired
	public List<Niveau> getAllNiveau() {

		return NiveauDao.findAll();
	}


	public Niveau getModuleById(Long IdNiveau) {
		return NiveauDao.getById(IdNiveau);

	}

	@Override
	public ExcelExporter prepareNiveauExport(List<Niveau> niveau) {
		return null;
	}

	@Override
	public ExcelExporter prepareNiveauExport(Niveau niveau) {
		return null;
	}


}
