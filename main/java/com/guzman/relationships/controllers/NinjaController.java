package com.guzman.relationships.controllers;


import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.guzman.relationships.models.Dojo;
import com.guzman.relationships.models.Ninja;
import com.guzman.relationships.services.AppServices;

import java.util.List;
import org.springframework.stereotype.Controller;
@Controller
public class NinjaController {
	private final AppServices appServices;
	public NinjaController(AppServices appServices) {
	this.appServices = appServices;
	}
	
	
	@RequestMapping("/new/ninja")
	public String formNewNinja(@ModelAttribute ("ninja") Ninja ninja, Model model) {
		List<Dojo> dojoList = appServices.findAllDojos();		
		model.addAttribute( "dojo", dojoList );
		return "NewNinja.jsp";
	 }

	
	@RequestMapping(value= "/new/ninja" , method = RequestMethod.POST )
	public String createNinja (@ModelAttribute("ninja")Ninja ninja, BindingResult result) {
		if (result.hasErrors()) {
            return "/new/ninja";
        } else {
            appServices.createNinja(ninja);
            return "redirect:/"; 
        }
    }
	
	
	
}
