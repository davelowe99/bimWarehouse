import com.bimWarehouse.Snapshot;
import com.bimWarehouse.BaseFile;
import com.bimWarehouse.FamilyFile;
import com.bimWarehouse.FamilyType;

class BootStrap {

    def init = { servletContext ->
		if(!Snapshot.findByName('Snapshot 1'))
		{
			println ("creating Snapshot")
			def snap1 = new Snapshot(
				 name: "Snapshot 1",
				 username: "dlowe",
				 snapType: "Full").save()
		}
		if(!Snapshot.findByName('Snapshot 2'))
		{
			println ("creating Snapshot")
			def snap2 = new Snapshot(
				 name: "Snapshot 2",
				 username: "dlowe",
				 snapType: "Full").save()
		}
		if(!Snapshot.findByName('Snapshot 3'))
		{
			println ("creating Snapshot")
			def snap2 = new Snapshot(
				 name: "Snapshot 3",
				 username: "dlowe",
				 snapType: "Partial").save()
		}
		
		if(!BaseFile.findByFileName('C:\\Docs\\Revit Docs\\rvt\\CentralCasaMimmo.rvt'))
		{
			def bfile1 = new BaseFile(
				snapshot: 1,
				fileName: "C:\\Docs\\Revit Docs\\rvt\\CentralCasaMimmo.rvt",
				fileSize: 250000.50,
				fileImage: null,
				docType:  "Project",
				username: "dlowe",
				build: 	  "Autodesk Revit 2014 (Build: 20130308_1515(x64))",
				product:  "Unknown",
				platform: "x64",
				buildTimeStamp: "20130308_1515",
				lastSavedPath:  "C:\\Docs\\Revit Docs\\rvt\\CentralCasaMimmo.rvt",
				locale: "ENU").save()
		}
		if(!BaseFile.findByFileName('C:\\Docs\\Revit Docs\\rvt\\Begoglio.rvt'))
		{
			def bfile2 = new BaseFile(
				snapshot: 1,
                fileName: "C:\\Docs\\Revit Docs\\rvt\\Begoglio.rvt",
                fileSize: 350000.50,
                docType:  "Project",
                username: "dlowe",
                build:    "Autodesk Revit 2014 (build: 20130308_1515(x64))",
                product:  "Unknown",
                platform: "x64",
                buildTimeStamp: "20130308_1515",
                lastSavedPath:  "C:\\Docs\\Revit Docs\\rvt\\Begoglio.rvt",
                locale: "ENU").save()
		}
		if(!BaseFile.findByFileName('C:\\Docs\\Revit Docs\\rfa\\OurLargeSofa.rfa'))
		{
			def bfile3 = new BaseFile(
				snapshot: 1,
                fileName: "C:\\Docs\\Revit Docs\\rfa\\OurLargeSofa.rfa",
                fileSize: 40000.50,
                docType:  "Family",
                username: "dlowe",
                build:    "Autodesk Revit 2014 (build: 20130308_1515(x64))",
                product:  "Unknown",
                platform: "x64",
                buildTimeStamp: "20130308_1515",
                lastSavedPath: "C:\\Docs\\Revit Docs\\rfa\\OurLargeSofa.rfa",
                locale: "ENU").save()
		}
		if(!BaseFile.findByFileName('C:\\Docs\\Revit Docs\\rfa\\Chair.rfa'))
		{
			def bfile4 = new BaseFile(
				snapshot: 1,
                fileName: "C:\\Docs\\Revit Docs\\rfa\\Chair.rfa",
                fileSize: 40000.50,
                docType:  "Family",
                username: "dlowe",
                build:    "Autodesk Revit 2014 (build: 20130308_1515(x64))",
                product:  "Unknown",
                platform: "x64",
                buildTimeStamp: "20130308_1515",
                lastSavedPath:  "C:\\Docs\\Revit Docs\\rfa\\Chair.rfa",
                locale: "ENU").save()
		}
		if(!BaseFile.findByFileName('C:\\Docs\\Revit Docs\\rfa\\Table.rfa'))
		{
			def bfile5 = new BaseFile(
				snapshot: 1,
                fileName: "C:\\Docs\\Revit Docs\\rfa\\Table.rfa",
                fileSize: 36000.50,
                docType:  "Family",
                username: "dlowe",
                build:    "Autodesk Revit 2014 (build: 20130308_1515(x64))",
                product:  "Unknown",
                platform: "x64",
                buildTimeStamp: "20130308_1515",
                lastSavedPath:  "C:\\Docs\\Revit Docs\\rfa\\Table.rfa",
                locale: "ENU").save()
		}
		
		if(!FamilyFile.findByTitle('OurLargeSofa'))
		{
			def ffile1 = new FamilyFile (
				title : "OurLargeSofa",
				category : "Furniture",
				classification : "23.40.20.14.14.14",
				baseFile : 3).save()
		}
		
		if(!FamilyFile.findByTitle('Chair'))
		{
			def ffile2 = new FamilyFile (
				title : "Chair",
				category : "Furniture",
				classification : "23.40.20.14.14.14",
				baseFile : 4).save()
		}
		
		if(!FamilyFile.findByTitle('Table'))
		{
			def ffile3 = new FamilyFile (
				title : "Table",
				category : "Furniture",
				classification : "23.40.20.14.14.14",
				baseFile : 5).save()
		}
		
		if(!FamilyType.findByTitle('1-Small'))
		{
			def ftype1 = new FamilyType(
				familyFile : 1,
				title : "1-Small",
				parameters : "{Length:120,Color:'Red'}").save()
		}
		if(!FamilyType.findByTitle('1-Medium'))
		{
			def ftype2 = new FamilyType(
				familyFile : 1,
				title : "1-Medium",
				parameters : "{Length:150,Color:'Red'}").save()
		}
		if(!FamilyType.findByTitle('1-Large'))
		{
			def ftype3 = new FamilyType(
				familyFile : 1,
				title : "1-Large",
				parameters : "{Length:180,Color:'Red'}").save()
		}
		if(!FamilyType.findByTitle('2-Smallx'))
		{
			 def ftype4 = new FamilyType(
				 familyFile : 2,
				 title : "2-Smallx",
				 parameters : "{Length:120,Color:'Red'}").save()
		}
		if(!FamilyType.findByTitle('2-Mediumx'))
		{
			def ftype5 = new FamilyType(
				familyFile : 2,
				title : "2-Mediumx",
				parameters : "{Length:150,Color:'Red'}").save()
		}
		
		if(!FamilyType.findByTitle('2-Largex'))
		{
			def ftype6 = new FamilyType(
				familyFile : 2,
				title : "2-Largex",
				parameters : "{Length:180,Color:'Red'}").save()
		}
    }
    def destroy = {
    }
}
