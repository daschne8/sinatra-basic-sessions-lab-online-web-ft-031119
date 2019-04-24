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
    erb :display
    # @session["item"] = params[:cart_item]
    # "#{@session["item"]}"
  end

end
