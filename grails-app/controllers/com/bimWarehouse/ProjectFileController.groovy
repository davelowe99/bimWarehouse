package com.bimWarehouse



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ProjectFileController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ProjectFile.list(params), model:[projectFileInstanceCount: ProjectFile.count()]
    }

    def show(ProjectFile projectFileInstance) {
        respond projectFileInstance
    }

    def create() {
        respond new ProjectFile(params)
    }

    @Transactional
    def save(ProjectFile projectFileInstance) {
        if (projectFileInstance == null) {
            notFound()
            return
        }

        if (projectFileInstance.hasErrors()) {
            respond projectFileInstance.errors, view:'create'
            return
        }

        projectFileInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'projectFile.label', default: 'ProjectFile'), projectFileInstance.id])
                redirect projectFileInstance
            }
            '*' { respond projectFileInstance, [status: CREATED] }
        }
    }

    def edit(ProjectFile projectFileInstance) {
        respond projectFileInstance
    }

    @Transactional
    def update(ProjectFile projectFileInstance) {
        if (projectFileInstance == null) {
            notFound()
            return
        }

        if (projectFileInstance.hasErrors()) {
            respond projectFileInstance.errors, view:'edit'
            return
        }

        projectFileInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ProjectFile.label', default: 'ProjectFile'), projectFileInstance.id])
                redirect projectFileInstance
            }
            '*'{ respond projectFileInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ProjectFile projectFileInstance) {

        if (projectFileInstance == null) {
            notFound()
            return
        }

        projectFileInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ProjectFile.label', default: 'ProjectFile'), projectFileInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'projectFile.label', default: 'ProjectFile'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
