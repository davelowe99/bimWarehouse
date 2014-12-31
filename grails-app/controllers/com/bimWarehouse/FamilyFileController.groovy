package com.bimWarehouse



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class FamilyFileController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond FamilyFile.list(params), model:[familyFileInstanceCount: FamilyFile.count()]
    }

    def show(FamilyFile familyFileInstance) {
        respond familyFileInstance
    }

    def create() {
        respond new FamilyFile(params)
    }

    @Transactional
    def save(FamilyFile familyFileInstance) {
        if (familyFileInstance == null) {
            notFound()
            return
        }

        if (familyFileInstance.hasErrors()) {
            respond familyFileInstance.errors, view:'create'
            return
        }

        familyFileInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'familyFile.label', default: 'FamilyFile'), familyFileInstance.id])
                redirect familyFileInstance
            }
            '*' { respond familyFileInstance, [status: CREATED] }
        }
    }

    def edit(FamilyFile familyFileInstance) {
        respond familyFileInstance
    }

    @Transactional
    def update(FamilyFile familyFileInstance) {
        if (familyFileInstance == null) {
            notFound()
            return
        }

        if (familyFileInstance.hasErrors()) {
            respond familyFileInstance.errors, view:'edit'
            return
        }

        familyFileInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'FamilyFile.label', default: 'FamilyFile'), familyFileInstance.id])
                redirect familyFileInstance
            }
            '*'{ respond familyFileInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(FamilyFile familyFileInstance) {

        if (familyFileInstance == null) {
            notFound()
            return
        }

        familyFileInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'FamilyFile.label', default: 'FamilyFile'), familyFileInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'familyFile.label', default: 'FamilyFile'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
