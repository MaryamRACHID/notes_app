package com.gsnotes.services.impl;

import com.gsnotes.bo.Element;
import com.gsnotes.bo.Etudiant;
import com.gsnotes.bo.Utilisateur;
import com.gsnotes.dao.IUtilisateurDao;
import com.gsnotes.services.IExporterModelService;
import com.gsnotes.utils.export.ExcelExporter;
import com.gsnotes.web.models.ExporterModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class ExporterModelServiceImpl implements IExporterModelService {

	@Autowired
	private IUtilisateurDao personDao;

	public List<Utilisateur> getAllPersons() {

		return personDao.findAll();
	}

	public Utilisateur getPersonById(Long id) {
		return personDao.getById(id);

	}

	public ExcelExporter preparePersonExport(ExporterModel model) {
		//String[] columnNames = new String[] { "id", "Nom", "Prénom", "CIN", "Email", "Télé","niveau" };
		List<Etudiant> Liste = model.getListe();
		String[][] data = new String[Liste.size()][4];
		String[] headData = new String[10];
		List<Element> columnNames = model.getElements();

		//for (Element e : model.getElements()){
		//	for (int i=0; i<model.getElements().size(); i++){
		//		columnNames[i] = e.getNom();
		//	}
		//}
		headData[0] = model.getTitreModule();
		headData[1] = model.getsessionUniv();
		headData[2] = String.valueOf(model.getInscrip().getAnnee());
		headData[3] = "TARIK BOUDAA";
		headData[4] = model.getSemestre();
		headData[5] = model.getTitreNiveau();
		//headData[6] = model.getElements().get(0).getNom();
		//headData[7] = model.getElements().get(1).getNom();
		//headData[8] = String.valueOf(model.getElements().get(0).getCurrentCoefficient());
		//headData[9] = String.valueOf(model.getElements().get(1).getCurrentCoefficient());
		//for (int i=6; i<columnNames.length; i++){
		//	headData[i] = columnNames[i];
		//}

		int i = 0;
		for (Etudiant u : Liste) {
			data[i][0] = String.valueOf(u.getIdUtilisateur());
			data[i][1] = u.getCne();
			data[i][2] = u.getNom();
			data[i][3] = u.getPrenom();
			i++;
		}

		return new ExcelExporter(columnNames, headData, data, "persons");

	}

	public Utilisateur getPersonByCin(String cin) {

		return personDao.getUtilisateurByCin( cin);

	}



}
