class TestsController < ApplicationController

    # See all the available tests
    def index
        @tests = Test.all
    end

    # View a specific test
    def show
        @test = Test.find(params[:id])
    end

end