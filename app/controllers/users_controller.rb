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
        "user's show page!"
    end


end