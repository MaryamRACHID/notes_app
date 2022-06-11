package com.gsnotes.web.controllers;

import com.gsnotes.bo.*;
import com.gsnotes.bo.Module;
import com.gsnotes.services.*;
import com.gsnotes.utils.export.ExcelExporter;
import com.gsnotes.web.models.ExportModel;
import com.gsnotes.web.models.ExporterModel;
import com.gsnotes.web.models.PersonModel;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


/**
 * Ce controleur gère les personnes de type Etudiant, Enseignant et Cadre Admin
 * 
 * @author Boudaa
 *
 */

@Controller
@RequestMapping("/prof")
public class UtilisateurProfController {

	@Autowired
	private IModuleService moduleService;

	@Autowired
	private  INiveauService niveauService;

	@Autowired
	private IInscripAnnuelleService inscripAnnuelleService;

	@Autowired
	private IInscripModuleService inscripModuleService;

	@Autowired
	private IInscripMatiereService inscripMatiereService;

	@Autowired
	private IPersonService personService;

	@Autowired
	private IExporterModelService exporterModelService;

	@Autowired
	private HttpSession httpSession;


	/** Utilisé pour la journalisation */
	private Logger LOGGER = LoggerFactory.getLogger(getClass());


	public UtilisateurProfController() {
	}

	@GetMapping("/exportModule")
	public void exportToExcel(HttpServletResponse response) throws IOException {
		response.setContentType("application/octet-stream");
		DateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd_HH:mm:ss");
		String currentDateTime = dateFormatter.format(new Date());
		String headerKey = "Content-Disposition";
		String headerValue = "attachment; filename=module_" + currentDateTime + ".xlsx";
		response.setHeader(headerKey, headerValue);
		List<Module> modules = moduleService.getAllModules();
		ExcelExporter excelExporter = moduleService.prepareModuleExport(modules);

		excelExporter.export(response);
	}

	@GetMapping("/importModule")
	public void importExcel(HttpServletResponse response) throws IOException {
		response.setContentType("application/octet-stream");
		DateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd_HH:mm:ss");
		String currentDateTime = dateFormatter.format(new Date());

		String headerKey = "Content-Disposition";
		String headerValue = "attachment; filename=users_" + currentDateTime + ".xlsx";
		response.setHeader(headerKey, headerValue);

		List<Module> modules = moduleService.getAllModules();

		//ExcelExporter excelExporter = moduleService.prepareModuleExport(modules, etudiants);

		//excelExporter.export(response);
	}

	@GetMapping("/manageModules")
	public String manageModules(Model m) {


		List<Module> modules = moduleService.getAllModules();
		m.addAttribute("moduleList", modules);

		List<Niveau> niveau = niveauService.getAllNiveau();
		m.addAttribute("niveauList", niveau);

		ExportModel exportModel = new ExportModel();
		m.addAttribute("exportModel", exportModel);


		return "prof/moduleSelect";
	}


	@RequestMapping(value = "exporter", method = RequestMethod.GET)
	public String SelectModule(@RequestParam Long idModule, Model model) {
		// On reçoit comme paramètre l'id
		Module mdl = moduleService.getModuleById(idModule);
		List<Element> elements = mdl.getElements();



		return "prof/exportList";
	}



	/////////////////////////////////////////////
	@GetMapping("/exportUnModule")
	public void exportToExcel(@RequestParam Long idModule, @RequestParam String semestre,@RequestParam String sessionUniv, HttpServletResponse response) throws IOException {
		response.setContentType("application/octet-stream");
		DateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd_HH:mm:ss");
		String currentDateTime = dateFormatter.format(new Date());
		String headerKey = "Content-Disposition";
		String headerValue = "attachment; filename=module_" + currentDateTime + ".xlsx";
		response.setHeader(headerKey, headerValue);

		Module module = moduleService.getModuleById(idModule);
		Niveau niveau = module.getNiveau();
		List<Etudiant> user = new ArrayList<>();
		List<Element> elements = module.getElements();

		ExporterModel exporterModel = new ExporterModel();

		exporterModel.setTitreModule(module.getTitre());
		exporterModel.setTitreNiveau(niveau.getTitre());
		exporterModel.setSessionUniv(sessionUniv);
		exporterModel.setSemestre(semestre);
		exporterModel.setElements(elements);

		List<InscriptionAnnuelle> inscrip = inscripAnnuelleService.getAllInscription();

		List<InscriptionMatiere> inscriptionMatiere = inscripMatiereService.getAllInscription();

		List<InscriptionModule> inscriptionModules = inscripModuleService.getAllInscription();

			for(InscriptionAnnuelle i : inscrip){
				for (InscriptionMatiere m : i.getInscriptionMatieres()){
					if (m.getMatiere().getModule().getIdModule() == module.getIdModule()){
						user.add(i.getEtudiant());
						exporterModel.setInscripListe(i);
					}
				}

				}


		exporterModel.setListe(user);



		ExcelExporter excelExporter = exporterModelService.preparePersonExport(exporterModel);


		excelExporter.export(response);
	}

}

