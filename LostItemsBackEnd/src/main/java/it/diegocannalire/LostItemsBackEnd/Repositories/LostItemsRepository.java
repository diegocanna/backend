package it.diegocannalire.LostItemsBackEnd.Repositories;


import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import it.diegocannalire.LostItemsBackEnd.entities.LostItem;


public interface LostItemsRepository extends JpaRepository<LostItem, Long> {
	List<LostItem> findByFound(Boolean found);
	List<LostItem> findByName(String name);

}
