package com.bimWarehouse

class Snapshot {

    static constraints = {
		name 			blank: false, 	size: 1..64
		username 		blank: false, 	size: 1..64
		snapType  		blank: false, 	size: 1..20
		
		dateCreated     nullable: true
		lastUpdated     nullable: true
    }
	
	static hasMany = [baseFiles : BaseFile]
	
	String name
	String username
	String snapType 
	
	Date dateCreated
	Date lastUpdated
}
