package it.diegocannalire.LostItemsBackEnd.controllers;

import java.sql.Date;
import java.time.LocalDate;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.http.HttpStatus;
import org.springframework.http.HttpStatusCode;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import it.diegocannalire.LostItemsBackEnd.Repositories.LostItemsRepository;
import it.diegocannalire.LostItemsBackEnd.dto.LostItemsDto;
import it.diegocannalire.LostItemsBackEnd.entities.LostItem;
import it.diegocannalire.LostItemsBackEnd.mappers.LostItemsMapper;
import jakarta.validation.Valid;

@RestController
@CrossOrigin("http://localhost:5173")
public class LostItemController {
	private LostItemsRepository lostItemsrepository;
	
	public LostItemController(LostItemsRepository lostItemsrepository) {
		this.lostItemsrepository=lostItemsrepository;
	}
	
	@GetMapping("/lostitems")
	public ResponseEntity<List<LostItem>> index(){
		List<LostItem> lostitem=this.lostItemsrepository.findAll();
		return ResponseEntity.status(HttpStatus.OK).body(lostitem);
	}
	
	@GetMapping("/lostitems/found")
	public ResponseEntity<?> show(@RequestParam Boolean found){
		List<LostItem> lostitem=this.lostItemsrepository.findByFound(found);
		if(lostitem.isEmpty()) {
			return ResponseEntity.status(HttpStatus.NOT_FOUND).body("oggetto non esistente");
		}
		else {
			return ResponseEntity.status(HttpStatus.OK).body(lostitem);
		}
	}
	
	@PostMapping("/lostitems")
	public ResponseEntity<?> store(@Valid @RequestBody LostItemsDto i, BindingResult result) {
		if(result.hasErrors()) {
			Map<String, String>errors= new HashMap<String, String>();
			result.getFieldErrors().forEach(error -> errors.put(error.getField(), error.getDefaultMessage()));
			return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(errors);
		}
		
		LostItemsMapper lostitemMapper=new LostItemsMapper();
		LostItem lostitem= lostitemMapper.dtoToEntity(i);
		LostItem lostitemInserted=this.lostItemsrepository.save(lostitem);
		return ResponseEntity.status(HttpStatus.CREATED).body(lostitemInserted);
	}
	
    @PutMapping("/lostitems/{id}")
    public ResponseEntity<?> markAsFound(
            @PathVariable Long id,
            @RequestParam(value = "foundLocation") String foundLocation,
            @RequestParam(value = "foundDate") Date foundDate) {

        Optional<LostItem> optionalLostItem = lostItemsrepository.findById(id);

        if (optionalLostItem.isEmpty()) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Oggetto smarrito non trovato con l'ID: " + id);
        }

        LostItem lostItem = optionalLostItem.get();
        lostItem.setFound(true);
        lostItem.setFound_location(foundLocation); // Assicurati di avere questo campo nella tua entità LostItem
        lostItem.setFound_date(foundDate);       // Assicurati di avere questo campo nella tua entità LostItem

        LostItem updatedLostItem = lostItemsrepository.save(lostItem);
        return ResponseEntity.ok(updatedLostItem);
    }

}
