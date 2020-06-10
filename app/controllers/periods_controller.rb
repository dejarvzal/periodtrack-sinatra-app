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
        redirect "/periods/#{@period.id}"
    
    end

    get '/periods/:id' do
        @period = Period.find_by(id: params[:id])
        erb :"/periods/show"
    end

    #UPDATE
    #edit button that takes to the form to get the id
    #render an edit form
    #patch metod/route that will update the post

    #DELETE


end