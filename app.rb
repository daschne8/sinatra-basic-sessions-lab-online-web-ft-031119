require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/'do
    erb :index
  end

  post '/checkout' do
    @session = session
    @session["name"] = "testing name"
    @session["item"] = params[:item]
    # "#{@session["item"]}"
    erb :display
  end

end
