package it.diegocannalire.LostItemsBackEnd.dto;

import java.sql.Date;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter @Setter @NoArgsConstructor @ToString
public class LostItemsDto {
	
	private String name;
	private String description;
	private Date lost_date;
	private String location;
	private Boolean found;
	private Date found_date;
	private String found_location;
}
