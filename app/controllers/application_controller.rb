require './config/environment'
require './app/models/sample_model'
require './app/models/events_model'
require './app/models/volunteer_models'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'app/views/html5up-phantom'
    set :views, 'app/views/html5up-phantom'
  end

  get '/' do
    return erb :index
  end
  
  get '/camps' do
    return erb :camps
  end
  
  get '/events' do
    return erb :events
  end
  
  get '/volunteer' do
    return erb :volunteer_opp
  end
  
  get '/Volunteer' do 
   return erb :volunteer_opp
  end
  
  get '/Camps' do 
   return erb :camps
  end
  
  get '/Events' do
   return erb :events
  end
  
  get '/animals' do 
   return erb :animals
  end
  
    post '/camp_results' do
   answers = params.values
   @total=0
   answers.each do |answer|
     @total += answer.to_i
   end 
   puts @total 
   
    @combo = results(@total)
    if @combo == "adventure_day"
      erb :adventure_day
     elsif @combo == "adventure_overnight"
      erb :adventure_overnight
     elsif @combo == "adventure_either"
      erb :adventure_either
     elsif @combo == "educational_day"
      erb :educational_day
     elsif @combo == "educational_overnight"
      erb :educational_overnight
     elsif @combo == "educational_either"
      erb :educational_either
     elsif @combo == "sports_day"
      erb :sports_day
     elsif @combo == "sports_overnight"
      erb :sports_overnight
     elsif @combo == "sports_either"
      erb :sports_either
    end 
   end
  
  # post '/events_results' do
  #  answers = params.values
  #  @total=0
  #  answers.each do |answer|
  #    @total += answer.to_i
  #  end 
  #  puts @total 
   
  #  @combo = results(@total)
  #  if @combo == "music_$"
  #    erb :music1
  #   elsif @combo == "music_$$"
  #    erb :music2
  #   elsif @combo == "music_$$$"
  #    erb :music3
  #   elsif @combo == "sports_$"
  #    erb :sports1
  #   elsif @combo == "sports_$$"
  #    erb :sports2
  #   elsif @combo == "sports_$$$"
  #    erb :sports3
  #   elsif @combo == "food_$"
  #    erb :food1
  #   elsif @combo == "food_$$"
  #    erb :food2
  #   elsif @combo == "food_$$$"
  #    erb :food3
  #  end 
  
  # end 
      post '/events_results' do
   answers = params.values
   @total=0
   answers.each do |answer|
     @total += answer.to_i
   end 
   puts @total 
   
    @combo = event_r(@total)
    if @combo == "music1"
      erb :music1
     elsif @combo == "music2"
      erb :music2
     elsif @combo == "music3"
      erb :music3
     elsif @combo == "sports1"
      erb :sports1
     elsif @combo == "sports2"
      erb :sports2
     elsif @combo == "sports3"
      erb :sports3
     elsif @combo == "food1"
      erb :food1
     elsif @combo == "food2"
      erb :food2
     elsif @combo == "food3"
      erb :food3
    end 
   end
  
  post '/volunteer_results' do
   answers = params.values
   @total=0
   answers.each do |answer|
     @total += answer.to_i
   end 
   puts @total 
   
   @combo = volunteer(@total)
   if @combo == "People"
     erb :people
    elsif @combo == "Animals"
     erb :animals
    elsif @combo == "Environment"
     erb :environment
   end 
  
  end 

end
