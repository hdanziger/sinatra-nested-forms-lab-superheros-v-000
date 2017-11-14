require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    get '/team' do
      erb :team
    end

    post '/superheroes' do
      @team_name = params[:team][:name]
      @team_motto = params[:team][:motto]
      @hero_name = []
      @hero_power = []
      @hero_bio = []
      @teams = params[:team][:members]
      @teams.each do |hero, detail|
        @hero_name << detail[:name]
        @hero_power << detail[:power]
        @hero_bio << detail[:bio]

      erb :team
    end

    end


end
