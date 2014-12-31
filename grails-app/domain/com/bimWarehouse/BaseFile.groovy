package com.bimWarehouse

class BaseFile {

    static constraints = {
		fileName 		blank: false, 	size: 1..255
		fileImage 		blank: true, 	nullable: true, size: 1..32768 
		docType  		blank: false, 	size: 1..50
		username 		blank: false, 	size: 1..64
		build    		blank: true, 	size: 1..64
		product  		blank: true, 	size: 1..50
		platform 		blank: true, 	size: 1..10
		buildTimeStamp 	blank: true, 	size: 1..15
		lastSavedPath 	blank: false, 	size: 1..255
		locale 			blank: false, 	size: 1..3
		
		dateCreated     nullable: true 
		lastUpdated     nullable: true
    }
	
	static belongsTo = [snapshot: Snapshot]
	String fileName
	String fileImage
	double fileSize
	String docType
	String username
	String build
	String product
	String platform
	String buildTimeStamp
	String lastSavedPath
	String locale
	
	Date dateCreated
	Date lastUpdated
}
