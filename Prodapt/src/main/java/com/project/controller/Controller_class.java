package com.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.modell.Model_Class;
import com.project.repository.Repo;

import jakarta.persistence.Id;

@Controller
public class Controller_class {

	@Autowired
	Repo r ;
	
	@RequestMapping("login")
	private String add() {
		return "index.html";
	}
	
	@RequestMapping("userForm")
	private String adduser(Model_Class data) {
		r.save(data);
		return "index.jsp";
	}
	
	
	@RequestMapping("reader")
	private ModelAndView read(@RequestParam Long id) {
	   
	   ModelAndView mav = new ModelAndView("show.jsp");
	   Model_Class model_Class =   r.findById(id).orElse(null);
	   mav.addObject(model_Class);
	   return mav;
	    
	}
		
	@RequestMapping("update")
	private ModelAndView update(Model_Class  model) {
	   
	   ModelAndView mav = new ModelAndView("update.jsp");
	   model =   r.findById(model.getId()).orElse(null);
	   mav.addObject(model.getId());
	   return mav;
	    
	}
	
	@RequestMapping("delete")
	private ModelAndView delete(@RequestParam Long id) {
		
		   ModelAndView mav = new ModelAndView("deleted.jsp");
		   Model_Class model_Class =  r.findById(id).orElse(null);
		   r.deleteById(id);
		   mav.addObject(model_Class);
		   return mav;
		    
	}
	
	
	
	
}
