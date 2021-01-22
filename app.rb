require 'sinatra'
require 'json'

get '/' do
  response = {
    message: "it me, a response!",
    given_query_params: request.env["QUERY_STRING"],
    HTTP_USER_AGENT: request.env["HTTP_USER_AGENT"]
  }
  response.to_json
end