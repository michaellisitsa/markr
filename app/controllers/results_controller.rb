
class ResultsController < ApplicationController
    def show
        result = Result.find(params[:resultId]) 
        render :json => result
    end
end
