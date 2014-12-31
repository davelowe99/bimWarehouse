package com.bimWarehouse

class ProjectFile {

    static constraints = {
		projectFileType 		blank: false, 	size: 1..15
		centralModelPath		blank: true, 	size: 1..255
		centralModelIdentity	blank: true, 	size: 1..38
		openWorksetDefault		blank: true, 	size: 1..3
		projectSparkFile		blank: true, 	size: 1..3
		
		dateCreated     nullable: true
		lastUpdated     nullable: true
    }
	
	static belongsTo = [baseFile: BaseFile]
	static hasMany = [xRefs : XRef]
	
	String projectFileType 
	String centralModelPath 
	String centralModelIdentity
	String openWorksetDefault 
	String projectSparkFile
	
	Date dateCreated
	Date lastUpdated
	
}
