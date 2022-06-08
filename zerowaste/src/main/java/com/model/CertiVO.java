package com.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CertiVO {

	private int cerNum;
	private String id;
	private String storeName;
	private String review;
	private String fileName;
	
}
