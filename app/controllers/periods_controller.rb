class PeriodsController < ApplicationController

    #READ 
    get '/periods' do
        @periods = Period.all
        erb :"periods/index"
    end

    #CREATE
    get '/periods/new' do
        erb :"/periods/new"
    end

    post '/periods/new' do
        @period = Period.create(month: params[:month], start_day: params[:start_day], note: params[:note], user_id: current_user.id)
        if @period.save
            # if params[:month]!= "" && params[:start_day]!= "" && params[:note]!= ""
            flash[:message] = "Period successfully created!"
            redirect "/periods/#{@period.id}"
            
        else
            flash[:error] = "Sorry, Period not saved.  Please complete all fields."
            redirect "/periods/new"
        end
    end

    get '/periods/:id' do
        @period = Period.find_by(id: params[:id])
        erb :"/periods/show"
    end

    #UPDATE
    #edit button that takes to the form to get the id
    get '/periods/:id/edit' do
        # binding.pry
        @period = Period.find_by(id: params[:id])
        erb :"/periods/edit"
    end

    patch '/periods/:id/edit' do
        #should month and day stay the same, update the period notes only?
        @period = Period.find(params[:id])
        @period.update(month: params[:month], start_day: params[:start_day], note: params[:note], user_id: current_user.id)
        redirect "/periods/#{@period.id}"
    end

    #DELETE
    delete '/periods/:id' do
        @period = Period.find(params[:id])
        @period.destroy
        redirect '/periods'
    end


end