package com.bimWarehouse



import grails.test.mixin.*
import spock.lang.*

@TestFor(ThumbnailController)
@Mock(Thumbnail)
class ThumbnailControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.thumbnailInstanceList
            model.thumbnailInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.thumbnailInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'POST'
            def thumbnail = new Thumbnail()
            thumbnail.validate()
            controller.save(thumbnail)

        then:"The create view is rendered again with the correct model"
            model.thumbnailInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            thumbnail = new Thumbnail(params)

            controller.save(thumbnail)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/thumbnail/show/1'
            controller.flash.message != null
            Thumbnail.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def thumbnail = new Thumbnail(params)
            controller.show(thumbnail)

        then:"A model is populated containing the domain instance"
            model.thumbnailInstance == thumbnail
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def thumbnail = new Thumbnail(params)
            controller.edit(thumbnail)

        then:"A model is populated containing the domain instance"
            model.thumbnailInstance == thumbnail
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'PUT'
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/thumbnail/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def thumbnail = new Thumbnail()
            thumbnail.validate()
            controller.update(thumbnail)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.thumbnailInstance == thumbnail

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            thumbnail = new Thumbnail(params).save(flush: true)
            controller.update(thumbnail)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/thumbnail/show/$thumbnail.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'DELETE'
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/thumbnail/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def thumbnail = new Thumbnail(params).save(flush: true)

        then:"It exists"
            Thumbnail.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(thumbnail)

        then:"The instance is deleted"
            Thumbnail.count() == 0
            response.redirectedUrl == '/thumbnail/index'
            flash.message != null
    }
}
