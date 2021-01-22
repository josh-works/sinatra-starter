require 'sinatra'
require 'json'

get '/' do
  JSON.generate(foo: "hi hello")
end