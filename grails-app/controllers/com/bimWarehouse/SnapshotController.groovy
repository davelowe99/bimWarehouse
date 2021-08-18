package com.bimWarehouse
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SnapshotController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Snapshot.list(params), model:[snapshotInstanceCount: Snapshot.count()]
    }

    def show(Snapshot snapshotInstance) {
        respond snapshotInstance
    }

    def create() {
        respond new Snapshot(params)
    }

    @Transactional
    def save(Snapshot snapshotInstance) {
        if (snapshotInstance == null) {
            notFound()
            return
        }

        if (snapshotInstance.hasErrors()) {
            respond snapshotInstance.errors, view:'create'
            return
        }

        snapshotInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'snapshot.label', default: 'Snapshot'), snapshotInstance.id])
                redirect snapshotInstance
            }
            '*' { respond snapshotInstance, [status: CREATED] }
        }
    }

    def edit(Snapshot snapshotInstance) {
        respond snapshotInstance
    }

    @Transactional
    def update(Snapshot snapshotInstance) {
        if (snapshotInstance == null) {
            notFound()
            return
        }

        if (snapshotInstance.hasErrors()) {
            respond snapshotInstance.errors, view:'edit'
            return
        }

        snapshotInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Snapshot.label', default: 'Snapshot'), snapshotInstance.id])
                redirect snapshotInstance
            }
            '*'{ respond snapshotInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Snapshot snapshotInstance) {

        if (snapshotInstance == null) {
            notFound()
            return
        }

        snapshotInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Snapshot.label', default: 'Snapshot'), snapshotInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'snapshot.label', default: 'Snapshot'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
