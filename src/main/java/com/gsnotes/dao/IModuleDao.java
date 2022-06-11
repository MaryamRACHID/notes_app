package com.gsnotes.dao;

import com.gsnotes.bo.Module;
import org.springframework.data.jpa.repository.JpaRepository;

public interface IModuleDao extends JpaRepository<Module, Long> {

}
