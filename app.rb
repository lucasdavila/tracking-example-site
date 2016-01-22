require 'sinatra/base'

class App < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index, layout: :layout
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
