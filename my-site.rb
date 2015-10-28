require "sinatra"

class MySite < Sinatra::Base

  get "/" do
    erb :about
  end

  get "/candies" do
    erb :candies
  end

  get "/stickers" do
    erb :stickers
  end

  get "/about" do
    erb :about
  end

end
