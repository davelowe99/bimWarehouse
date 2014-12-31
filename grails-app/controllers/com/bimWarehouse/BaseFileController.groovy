package com.bimWarehouse



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class BaseFileController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond BaseFile.list(params), model:[baseFileInstanceCount: BaseFile.count()]
    }

    def show(BaseFile baseFileInstance) {
        respond baseFileInstance
    }

    def create() {
        respond new BaseFile(params)
    }

    @Transactional
    def save(BaseFile baseFileInstance) {
        if (baseFileInstance == null) {
            notFound()
            return
        }

        if (baseFileInstance.hasErrors()) {
            respond baseFileInstance.errors, view:'create'
            return
        }

        baseFileInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'baseFile.label', default: 'BaseFile'), baseFileInstance.id])
                redirect baseFileInstance
            }
            '*' { respond baseFileInstance, [status: CREATED] }
        }
    }

    def edit(BaseFile baseFileInstance) {
        respond baseFileInstance
    }

    @Transactional
    def update(BaseFile baseFileInstance) {
        if (baseFileInstance == null) {
            notFound()
            return
        }

        if (baseFileInstance.hasErrors()) {
            respond baseFileInstance.errors, view:'edit'
            return
        }

        baseFileInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'BaseFile.label', default: 'BaseFile'), baseFileInstance.id])
                redirect baseFileInstance
            }
            '*'{ respond baseFileInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(BaseFile baseFileInstance) {

        if (baseFileInstance == null) {
            notFound()
            return
        }

        baseFileInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'BaseFile.label', default: 'BaseFile'), baseFileInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'baseFile.label', default: 'BaseFile'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
