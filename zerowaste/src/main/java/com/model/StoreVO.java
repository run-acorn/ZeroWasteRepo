package com.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class StoreVO {

	private int storeNum;
	private String storeName;
	private String storeAddress;
	private String foodType;
	private String latutude;
	private String longitude;
	private String url;
	
}
