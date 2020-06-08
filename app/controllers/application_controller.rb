require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions  #enable session hash
    set :session_secret, "super_secret_session"
    #set session secret for extra layer of security
  end

  get "/" do
    erb :welcome
  end

end
