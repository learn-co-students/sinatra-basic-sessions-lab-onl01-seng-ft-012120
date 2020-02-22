require_relative 'config/environment'

class App < Sinatra::Base
  configure do 
    enable :sessions 
    set :session_secret, "secret"
  end

  get '/' do 
    erb :index
  end

  post '/checkout' do 
    @session = session
    @session[:item] = params[:item]
    # raise @session.inspect
    erb :checkout
  end
end