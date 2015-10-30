require "sinatra"

class MySite < Sinatra::Base

  get "/" do
    erb :about
  end

  get "/candies" do
    @candies = ["white chocolate", "gummy bear", "snickers", "cotton candy", "pink gum"]
    erb :candies
  end

  get "/stickers" do
    erb :stickers
  end

  get "/about" do
    @year = Time.new.year
    erb :about
  end

  get "/projects" do
    erb :projects
  end

end
