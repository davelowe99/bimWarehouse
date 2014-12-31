package com.bimWarehouse



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ThumbnailController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Thumbnail.list(params), model:[thumbnailInstanceCount: Thumbnail.count()]
    }

    def show(Thumbnail thumbnailInstance) {
        respond thumbnailInstance
    }

    def create() {
        respond new Thumbnail(params)
    }

    @Transactional
    def save(Thumbnail thumbnailInstance) {
        if (thumbnailInstance == null) {
            notFound()
            return
        }

        if (thumbnailInstance.hasErrors()) {
            respond thumbnailInstance.errors, view:'create'
            return
        }

        thumbnailInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'thumbnail.label', default: 'Thumbnail'), thumbnailInstance.id])
                redirect thumbnailInstance
            }
            '*' { respond thumbnailInstance, [status: CREATED] }
        }
    }

    def edit(Thumbnail thumbnailInstance) {
        respond thumbnailInstance
    }

    @Transactional
    def update(Thumbnail thumbnailInstance) {
        if (thumbnailInstance == null) {
            notFound()
            return
        }

        if (thumbnailInstance.hasErrors()) {
            respond thumbnailInstance.errors, view:'edit'
            return
        }

        thumbnailInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Thumbnail.label', default: 'Thumbnail'), thumbnailInstance.id])
                redirect thumbnailInstance
            }
            '*'{ respond thumbnailInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Thumbnail thumbnailInstance) {

        if (thumbnailInstance == null) {
            notFound()
            return
        }

        thumbnailInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Thumbnail.label', default: 'Thumbnail'), thumbnailInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'thumbnail.label', default: 'Thumbnail'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
