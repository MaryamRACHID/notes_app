package com.gsnotes.services.impl;

import com.gsnotes.bo.InscriptionModule;
import com.gsnotes.dao.InscripModuleDao;
import com.gsnotes.services.IInscripModuleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class InscripModuleServiceImpl implements IInscripModuleService {

	@Autowired
	private InscripModuleDao Dao;

	@Override
	public List<InscriptionModule> getAllInscription() {
		return Dao.findAll();
	}

	@Override
	public InscriptionModule getInscripByidModule(Long id) {
		return Dao.getById(id);
	}


	//@Autowired
	//private IRoleDao roleDao;




}
