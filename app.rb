require 'pry'
require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate=Pirate.new(pirate_h:params[:pirate])
      params[:pirate][:ships].each do |ship|
         @ships=Ship.new(ship_h:ship)
      end
      erb :'pirates/show'
    end
  end
end

#pirates[pirate][name]      pirates[pirate][weight]  pirates[pirate][height]  pirates[pirate][ships][][name] pirates[pirate][ships][][booty]
#pirates[pirate][ships][][type]
