require_relative "../../config/environment"
require_relative "../models/fweet"
class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, "public"
    set :views, "app/views"
  end
  
  get "/" do
#     @fweets = Fweet.all
    erb :index
  end
  
  
  post "/" do
#     @fweet = Fweet.new(params[:username],params[:fweet]).save
#     @fweets = Fweet.all
    fweet.create(:user => params[:user], :content => params [:fweet])
    erb :index
  end
  
end