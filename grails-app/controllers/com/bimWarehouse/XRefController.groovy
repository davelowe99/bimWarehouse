package com.bimWarehouse



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class XRefController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond XRef.list(params), model:[XRefInstanceCount: XRef.count()]
    }

    def show(XRef XRefInstance) {
        respond XRefInstance
    }

    def create() {
        respond new XRef(params)
    }

    @Transactional
    def save(XRef XRefInstance) {
        if (XRefInstance == null) {
            notFound()
            return
        }

        if (XRefInstance.hasErrors()) {
            respond XRefInstance.errors, view:'create'
            return
        }

        XRefInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'XRef.label', default: 'XRef'), XRefInstance.id])
                redirect XRefInstance
            }
            '*' { respond XRefInstance, [status: CREATED] }
        }
    }

    def edit(XRef XRefInstance) {
        respond XRefInstance
    }

    @Transactional
    def update(XRef XRefInstance) {
        if (XRefInstance == null) {
            notFound()
            return
        }

        if (XRefInstance.hasErrors()) {
            respond XRefInstance.errors, view:'edit'
            return
        }

        XRefInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'XRef.label', default: 'XRef'), XRefInstance.id])
                redirect XRefInstance
            }
            '*'{ respond XRefInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(XRef XRefInstance) {

        if (XRefInstance == null) {
            notFound()
            return
        }

        XRefInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'XRef.label', default: 'XRef'), XRefInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'XRef.label', default: 'XRef'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
