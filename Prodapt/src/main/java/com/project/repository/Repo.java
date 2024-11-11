package com.project.repository;

import org.springframework.data.repository.CrudRepository;

import com.project.modell.Model_Class;

public interface Repo extends CrudRepository<Model_Class, Long> {

}
