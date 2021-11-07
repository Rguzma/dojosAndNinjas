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
public class DojoController {
	private final AppServices appServices;
	public DojoController(AppServices appServices) {
		this.appServices = appServices;
	}
	    
	@RequestMapping("/")
	public String index(Model model) {
		List<Dojo> dojoList = appServices.findAllDojos();
		
		model.addAttribute( "dojo", dojoList );
		return "index.jsp";
	 }
	@RequestMapping("/new/dojo")
	public String formNewDojo(@ModelAttribute ("dojo") Dojo dojo) {

		return "NewDojo.jsp";
	 }
	
	@RequestMapping("details/dojo/{id}")
	public String detailsDojo(@PathVariable ("id") Long id, Model model) {
		System.out.println("id" );
		Long dojo_id = id;
		model.addAttribute("dojo", this.appServices.findDojo(id));
		model.addAttribute("ninja", this.appServices.findNinjas(dojo_id));
		System.out.println("dojo" );
		return "DojoDetails.jsp";
	 }
	
	@RequestMapping(value= "/new/dojo" , method = RequestMethod.POST )
	public String createDojo (@ModelAttribute("dojo")Dojo dojo, BindingResult result) {
		if (result.hasErrors()) {
            return "/new/dojo";
        } else {
            appServices.createDojo(dojo);
            return "redirect:/";
        }
    }
}
