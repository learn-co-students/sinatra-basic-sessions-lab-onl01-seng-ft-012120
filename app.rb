require_relative 'config/environment'

class App < Sinatra::Base

    configure do 
        enable :sessions
        set :sessions_secret, "secret"
    end

    get '/' do
        @session = session
        erb :index #contains the form
    end

    post '/checkout' do #contains the cart
        session[:item] = params[:item]
        @item = session[:item]
        erb :cart
    end
end