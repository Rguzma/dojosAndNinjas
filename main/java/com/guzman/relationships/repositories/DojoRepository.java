package com.guzman.relationships.repositories;


import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import com.guzman.relationships.models.Dojo;

@Repository
public interface DojoRepository extends CrudRepository<Dojo, Long>{
	
	Dojo save( Dojo d );
	List<Dojo> findAll();
	Dojo findById (Dojo id);

}
