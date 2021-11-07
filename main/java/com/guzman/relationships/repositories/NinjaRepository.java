package com.guzman.relationships.repositories;


import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.guzman.relationships.models.Dojo;
import com.guzman.relationships.models.Ninja;

@Repository
public interface NinjaRepository extends CrudRepository<Ninja, Long> {
	
	Ninja save( Ninja n );
	List <Ninja> findByDojo_id(Long dojo_id);

}
