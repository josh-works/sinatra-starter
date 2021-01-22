require 'sinatra'
require 'json'

get '/' do
  JSON.generate(env)
end