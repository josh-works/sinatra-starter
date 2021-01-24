require 'sinatra'
require 'json'

get '/?' do
  current_time = Time.now.strftime("%r %Z")
  @message = "It is #{current_time} and all is well!"
  @random_row = get_random_row
  erb :index, locals: { message: @message, 
                        random_row: @random_row
                      }
end

def get_random_row
  file = File.open('data/20210124030110_4746.csv')
  lines = file.readlines
  lines.sample
end