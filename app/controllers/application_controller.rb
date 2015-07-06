require_relative "../../config/environment"
class ApplicationController < Sinatra::Base

  get "/" do
    "hello World"
  end
  
end