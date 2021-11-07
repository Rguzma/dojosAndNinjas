package com.guzman.relationships.services;


import java.util.List;
import java.util.Optional;
import org.springframework.stereotype.Service;
import com.guzman.relationships.models.*;
import com.guzman.relationships.repositories.DojoRepository;
import com.guzman.relationships.repositories.NinjaRepository;
@Service
public class AppServices {
	
	// adding the book repository as a dependency
    private final DojoRepository dojoRepository;
    private final NinjaRepository ninjaRepository;
    
    	public AppServices(DojoRepository dojoRepository, NinjaRepository ninjaRepository) {
        this.dojoRepository = dojoRepository;
        this.ninjaRepository = ninjaRepository;
    }
    	
    	public Dojo createDojo(Dojo dojo) {
    		return dojoRepository.save(dojo);
    	}
    	
    	public List <Dojo> findAllDojos() {
    		return dojoRepository.findAll();
    	}
    	public Dojo findDojo (Long id) {
    		return this.dojoRepository.findById(id).orElse(null);
    	}
    	public Ninja createNinja(Ninja ninja) {
    		return ninjaRepository.save(ninja);
    	}
    	public List <Ninja> findNinjas (Long dojo_id) {
    		return this.ninjaRepository.findByDojo_id(dojo_id);
    	}
}
