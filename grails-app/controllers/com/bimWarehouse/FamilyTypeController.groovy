package com.bimWarehouse



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class FamilyTypeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond FamilyType.list(params), model:[familyTypeInstanceCount: FamilyType.count()]
    }

    def show(FamilyType familyTypeInstance) {
        respond familyTypeInstance
    }

    def create() {
        respond new FamilyType(params)
    }

    @Transactional
    def save(FamilyType familyTypeInstance) {
        if (familyTypeInstance == null) {
            notFound()
            return
        }

        if (familyTypeInstance.hasErrors()) {
            respond familyTypeInstance.errors, view:'create'
            return
        }

        familyTypeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'familyType.label', default: 'FamilyType'), familyTypeInstance.id])
                redirect familyTypeInstance
            }
            '*' { respond familyTypeInstance, [status: CREATED] }
        }
    }

    def edit(FamilyType familyTypeInstance) {
        respond familyTypeInstance
    }

    @Transactional
    def update(FamilyType familyTypeInstance) {
        if (familyTypeInstance == null) {
            notFound()
            return
        }

        if (familyTypeInstance.hasErrors()) {
            respond familyTypeInstance.errors, view:'edit'
            return
        }

        familyTypeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'FamilyType.label', default: 'FamilyType'), familyTypeInstance.id])
                redirect familyTypeInstance
            }
            '*'{ respond familyTypeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(FamilyType familyTypeInstance) {

        if (familyTypeInstance == null) {
            notFound()
            return
        }

        familyTypeInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'FamilyType.label', default: 'FamilyType'), familyTypeInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'familyType.label', default: 'FamilyType'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
