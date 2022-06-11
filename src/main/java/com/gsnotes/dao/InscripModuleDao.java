package com.gsnotes.dao;

import com.gsnotes.bo.InscriptionMatiere;
import com.gsnotes.bo.InscriptionModule;
import org.springframework.data.jpa.repository.JpaRepository;

public interface InscripModuleDao extends JpaRepository<InscriptionModule, Long> {

}
