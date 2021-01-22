require 'sinatra'
require 'json'

get '/' do
  {foo: "hi hello" }.to_json
end