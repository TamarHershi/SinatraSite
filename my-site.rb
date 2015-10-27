require "sinatra"

class MySite < Sinatra::Base

  get "/:name" do
    "Hello #{params[:name]}"
  end

  get "/hello.html" do
    "Welcome to the INTERNET"
#http://localhost:9292/hello.html
 end

  get "/candies" do
    File.read('candies.html')
  end

  get "/Stickers" do
    File.read('Stickers.html')
  end
end
