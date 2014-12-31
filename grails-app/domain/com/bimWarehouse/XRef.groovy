package com.bimWarehouse

class XRef {

    static constraints = {
		fileType  		 blank: false, 	size: 1..25
		fileName  		 blank: false, 	size: 1..255
		fileNameAndPath  blank: false, 	size: 1..255
		pathType		 blank: false, 	size: 1..50
		loadState		 blank: false, 	size: 1..20
		
		dateCreated      nullable: true
		lastUpdated      nullable: true
    }
	
	static belongsTo = [projectFile: ProjectFile]

	String fileType 
	String fileName
	String fileNameAndPath 
	String pathType
	String loadState
	
	Date dateCreated
	Date lastUpdated
}
