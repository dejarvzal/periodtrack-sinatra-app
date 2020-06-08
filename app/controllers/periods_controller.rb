class PeriodsController < ApplicationController


#READ 
get '/periods' do
   @periods = Period.all
   erb :"periods/index"
end

get '/periods/:id' do
    @period = Period.find_by(id: params[:id])
    erb :"/periods/show"
end

#CREATE
post '/periods' do

end

#UPDATE


#DELETE


end