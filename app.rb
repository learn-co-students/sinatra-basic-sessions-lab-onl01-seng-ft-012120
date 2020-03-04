require_relative 'config/environment'

class App < Sinatra::Base
    configure do
        enable :sessions
        set :session_secret, SecureRandom.hex(64)
      end

    get '/' do 
        
        erb :index
    end

    post '/checkout' do 
        
        @session = session
        item = params[:item]
        @session[:item] = item
        erb :check_out
    end

end