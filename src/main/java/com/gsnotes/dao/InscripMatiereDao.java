package com.gsnotes.dao;

import com.gsnotes.bo.InscriptionAnnuelle;
import com.gsnotes.bo.InscriptionMatiere;
import org.springframework.data.jpa.repository.JpaRepository;

public interface InscripMatiereDao extends JpaRepository<InscriptionMatiere, Long> {

}
