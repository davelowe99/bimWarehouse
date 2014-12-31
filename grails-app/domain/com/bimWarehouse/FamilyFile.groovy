package com.bimWarehouse

class FamilyFile {

    static constraints = {
		title 			 blank: false, 	size: 1..64
		category 		 blank: false, 	size: 1..64
		classification   blank: true, 	size: 1..64
		
		dateCreated     nullable: true
		lastUpdated     nullable: true
    }
	
	static belongsTo = [baseFile: BaseFile]
	static hasMany = [familyTypes : FamilyType]

	String title
	String category
	String classification
	
	Date dateCreated
	Date lastUpdated

}
