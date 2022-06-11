package com.gsnotes.services.impl;

import com.gsnotes.bo.InscriptionAnnuelle;
import com.gsnotes.bo.InscriptionMatiere;
import com.gsnotes.dao.InscripAnnuelleDao;
import com.gsnotes.dao.InscripMatiereDao;
import com.gsnotes.services.IInscripAnnuelleService;
import com.gsnotes.services.IInscripMatiereService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class InscripMatiereServiceImpl implements IInscripMatiereService {

	@Autowired
	private InscripMatiereDao Dao;

	@Override
	public List<InscriptionMatiere> getAllInscription() {
		return Dao.findAll();
	}

	@Override
	public InscriptionMatiere getInscripByidModule(Long id) {
		return Dao.getById(id);
	}


	//@Autowired
	//private IRoleDao roleDao;




}
