package com.project.modell;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Model_Class {

	@Id
	private Long id;
	private String name;
	
	@Override
	public String toString() {
	    StringBuilder sb = new StringBuilder();
	    sb.append(String.format("%-10s %-20s\n", "ID", "Name"));
	    sb.append(String.format("%-10s %-20s\n", "----", "--------------------"));
	    sb.append(String.format("%-10s %-20s", id, name));
	    return sb.toString();
	}

	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	
}
