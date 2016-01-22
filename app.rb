require 'sinatra/base'

class App < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
    set :tracking_base_url, 'http://localhost:3000'
  end

  configure :production do
    set :tracking_base_url, 'http://tracking2.herokuapp.com'
  end

  get '/' do
    erb :index
  end

  get '/about' do
    erb :about
  end

  get '/pricing' do
    erb :pricing
  end

  get '/contact' do
    erb :contact
  end
end
