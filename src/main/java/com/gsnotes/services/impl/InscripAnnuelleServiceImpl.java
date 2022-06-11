package com.gsnotes.services.impl;

import com.gsnotes.bo.Compte;
import com.gsnotes.bo.InscriptionAnnuelle;
import com.gsnotes.bo.Role;
import com.gsnotes.bo.Utilisateur;
import com.gsnotes.dao.ICompteDao;
import com.gsnotes.dao.IRoleDao;
import com.gsnotes.dao.IUtilisateurDao;
import com.gsnotes.dao.InscripAnnuelleDao;
import com.gsnotes.services.ICompteService;
import com.gsnotes.services.IInscripAnnuelleService;
import com.gsnotes.utils.export.ExcelExporter;
import org.passay.CharacterRule;
import org.passay.EnglishCharacterData;
import org.passay.PasswordGenerator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class InscripAnnuelleServiceImpl implements IInscripAnnuelleService {

	@Autowired
	private InscripAnnuelleDao Dao;

	@Override
	public List<InscriptionAnnuelle> getAllInscription() {
		return Dao.findAll();
	}

	@Override
	public InscriptionAnnuelle getInscripByidNiveau(Long id) {
		return Dao.getById(id);
	}


	//@Autowired
	//private IRoleDao roleDao;




}
