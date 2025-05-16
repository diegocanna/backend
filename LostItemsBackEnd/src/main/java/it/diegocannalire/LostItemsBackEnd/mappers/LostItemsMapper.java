package it.diegocannalire.LostItemsBackEnd.mappers;

import java.sql.Date;
import java.time.LocalDate;

import it.diegocannalire.LostItemsBackEnd.dto.LostItemsDto;
import it.diegocannalire.LostItemsBackEnd.entities.LostItem;

public class LostItemsMapper {
	public LostItem dtoToEntity(LostItemsDto lostItemsDto) {
		LostItem lostitem= new LostItem();
		lostitem.setName(lostItemsDto.getName());
		lostitem.setDescription(lostItemsDto.getDescription());
		lostitem.setLost_date(LocalDate.now());
		lostitem.setLocation(lostItemsDto.getLocation());
		lostitem.setFound(false);
		lostitem.setFound_date(lostItemsDto.getFound_date());
		lostitem.setFound_location(lostItemsDto.getFound_location());
		
		return lostitem;
	}

}
