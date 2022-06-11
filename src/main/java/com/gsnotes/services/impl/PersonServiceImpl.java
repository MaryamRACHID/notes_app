package com.gsnotes.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gsnotes.bo.Utilisateur;
import com.gsnotes.dao.IUtilisateurDao;
import com.gsnotes.services.IPersonService;
import com.gsnotes.utils.export.ExcelExporter;

@Service
@Transactional
public class PersonServiceImpl implements IPersonService {

	@Autowired
	private IUtilisateurDao personDao;

	public List<Utilisateur> getAllPersons() {

		return personDao.findAll();
	}

	public void deletePerson(Long id) {
		personDao.deleteById(id);

	}

	public Utilisateur getPersonById(Long id) {
		return personDao.getById(id);

	}

	public void addPerson(Utilisateur pPerson) {
		personDao.save(pPerson);

	}

	public void updatePerson(Utilisateur pPerson) {
		personDao.save(pPerson);

	}



	public Utilisateur getPersonByCin(String cin) {

		return personDao.getUtilisateurByCin( cin);

	}

	@Override
	public ExcelExporter preparePersonExport(List<Utilisateur> persons) {
		return null;
	}

}
