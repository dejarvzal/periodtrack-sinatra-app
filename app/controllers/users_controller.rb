class UsersController < ApplicationController

    get "/login" do
    erb :login
    end

    post "/login" do
        user = User.find_by(email: params[:email])
        # binding.pry
        if user && user.authenticate(params[:password]) #log them in 
            # binding.pry
        session[:user_id] = user.id  #redirect to profile
        redirect "/users/#{user.id}"
        else #show error message
           redirect '/login'
        end
    end

    get "/users/:id" do
        # binding.pry
        "user's show page!"
    end

    get '/signup' do
        #get signup route that renders signup form
        erb :"/users/signup"
    end
   

   post '/signup' do
        #recieves input data from user, create the user, logs them in.
        redirect "/users/#{user.id}" #or redirect '/login'
   end
   
   get '/logout' do
    #get logout route that clears the session hash
   end
     
end