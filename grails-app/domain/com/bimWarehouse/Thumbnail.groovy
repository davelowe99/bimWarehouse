package com.bimWarehouse

import java.util.Date;

class Thumbnail {

    static constraints = {
		imageData 		blank: true, nullable: true, size: 1..32768
		
		dateCreated     nullable: true
		lastUpdated     nullable: true
    }
	
	String imageData
	
	Date dateCreated
	Date lastUpdated
}
