package com.bimWarehouse

class FamilyType {

    static constraints = {
		parameters 		blank: true,  size: 1..32768
		title 			blank: false, size: 1..64
		dateCreated     nullable: true
		lastUpdated     nullable: true
    }
	
	static belongsTo = [familyFile: FamilyFile]
	String title
	String parameters 
	
	Date dateCreated
	Date lastUpdated
}
