require "sinatra"

class MySite < Sinatra::Base

  get "/" do
    erb :about
  end

  get "/candies" do
    @h1 = "CANDIES!!!"
    @candies = ["white chocolate", "gummy bear", "snickers", "cotton candy", "pink gum"]
    erb :candies
  end

  get "/stickers" do
    @h1 = "Emily Loves Stickers!"
    erb :stickers
  end

  get "/about" do
    @h1 = "about"
    @year = Time.new.year
    @bday = Time.new(1984, 9, 28)
    erb :about
  end

  get "/projects" do
    @h1 = "my projects"
    @verb=["cook", "build", "make", "create", "throw away", "destroy"]
    @adjective=["sweet", "beautiful", "ugly", "green", "tall", "wet"]
    @none=["boat", "table", "diaper", "tv", "pillow", "computer"]
    erb :projects
  end

  get "/index" do
    @h1 ="My Home (Page)"
    erb :index
  end

end
