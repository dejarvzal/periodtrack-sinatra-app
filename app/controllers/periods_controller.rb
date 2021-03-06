class PeriodsController < ApplicationController

    #READ 
    get '/periods' do
        @periods = Period.all
        erb :"periods/index"
    end

    #CREATE
    get '/periods/new' do
        if logged_in?
           erb :"/periods/new"
        else
            flash[:error] = "You must be logged in to create a Period entry!"
            redirect "/"
        end
        erb :"/periods/new"
    end

    post '/periods/new' do
        @period = Period.create(month: params[:month], start_day: params[:start_day], note: params[:note], user_id: current_user.id)
        if @period.save
            flash[:message] = "Period successfully created!"
            redirect "/periods/#{@period.id}"
        else
            # binding.pry
            flash[:error] = "Sorry, Period not saved: #{@period.errors.full_messages.to_sentence}"
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
        @period = Period.find_by(id: params[:id])
        if authorized_to_edit?(@period)
         erb :"/periods/edit"
        else
         flash[:error] = "You do not have the rights to edit this Period!"
            redirect "/periods"
        end
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