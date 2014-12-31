package com.bimWarehouse



import grails.test.mixin.*
import spock.lang.*

@TestFor(ProjectFileController)
@Mock(ProjectFile)
class ProjectFileControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.projectFileInstanceList
            model.projectFileInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.projectFileInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'POST'
            def projectFile = new ProjectFile()
            projectFile.validate()
            controller.save(projectFile)

        then:"The create view is rendered again with the correct model"
            model.projectFileInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            projectFile = new ProjectFile(params)

            controller.save(projectFile)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/projectFile/show/1'
            controller.flash.message != null
            ProjectFile.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def projectFile = new ProjectFile(params)
            controller.show(projectFile)

        then:"A model is populated containing the domain instance"
            model.projectFileInstance == projectFile
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def projectFile = new ProjectFile(params)
            controller.edit(projectFile)

        then:"A model is populated containing the domain instance"
            model.projectFileInstance == projectFile
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'PUT'
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/projectFile/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def projectFile = new ProjectFile()
            projectFile.validate()
            controller.update(projectFile)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.projectFileInstance == projectFile

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            projectFile = new ProjectFile(params).save(flush: true)
            controller.update(projectFile)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/projectFile/show/$projectFile.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'DELETE'
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/projectFile/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def projectFile = new ProjectFile(params).save(flush: true)

        then:"It exists"
            ProjectFile.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(projectFile)

        then:"The instance is deleted"
            ProjectFile.count() == 0
            response.redirectedUrl == '/projectFile/index'
            flash.message != null
    }
}
