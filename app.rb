require_relative 'config/environment'

configure do
    enable :sessions
    set :session_secret, "11a854873da34e91e24efeb0f170a8ef9467517c8909b827231127ad15f35303e0728871f544446236b3c2818854cad7be53d529bbef70e7bf83c1ea95d7a3eb"
end

class App < Sinatra::Base
  
    get '/' do
        erb :index
    end

    post '/checkout' do
        @session = session
        @session[:item] = params[:item]
        erb :checkout
    end
end