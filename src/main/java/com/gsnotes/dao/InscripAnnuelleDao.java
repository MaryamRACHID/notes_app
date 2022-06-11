package com.gsnotes.dao;

import com.gsnotes.bo.Compte;
import com.gsnotes.bo.InscriptionAnnuelle;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface InscripAnnuelleDao extends JpaRepository<InscriptionAnnuelle, Long> {

}
