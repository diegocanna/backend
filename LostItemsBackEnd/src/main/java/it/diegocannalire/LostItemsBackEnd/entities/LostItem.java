package it.diegocannalire.LostItemsBackEnd.entities;

import java.sql.Date;
import java.time.LocalDate;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name="lostItems")
@Getter
@Setter
@NoArgsConstructor
@ToString

public class LostItem {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	@Column
	private String name;
	
	@Column
	private String description;
	
	@Column
	private LocalDate lost_date;
	
	@Column
	private String location;
	
	@Column
	private Boolean found;
	
	@Column
	private Date found_date;
	
	@Column
	private String found_location;
		
}
