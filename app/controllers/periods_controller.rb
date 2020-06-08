class PeriodsController < ApplicationController


#READ 
get '/periods' do
   @periods = Period.all
   erb :"periods/index"
end

#CREATE
post '/periods' do
    
end

#UPDATE


#DELETE


end