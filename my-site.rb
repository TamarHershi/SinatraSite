require "sinatra"

class MySite < Sinatra::Base

  get "/" do
    erb :about
  end

  get "/candies" do
    @h1 = "Emily Loves Candies!!!"
    @candies = ["White Chocolate", "Gummy Bear", "Snickers", "Cotton Candy", "Pink Gum", "Caramel Candy", "Peanut butter"]
    random = rand(7)
    @rand_candy = @candies[random]
    @candies.delete_at(random)
    erb :candies
  end

  get "/stickers" do
    @h1 = "Rona Loves Stickers!"
    erb :stickers
  end

  get "/about" do
    @h1 = "about"
    @year = Time.new.year
    @bday = Time.new(1984, 9, 28)
    erb :about
  end

  get "/projects" do
    h2_1 = "Have 3 kids"
    h2_2 = "Teach Emily to ride on bikes"
    h2_3 = "Become a software developer"
    p_1 = "Growing up as a single child, I always new that someday I will have a big family" +
          "so as much as it sounds weird, yes! \"Have 3 kids\" is a project that I'm working on" +
          "(and not an easy one.... trust me). with 2 daughter , I have one more to go :-)"
    p_2 = "Emily loves her bikes, but she needs instructions and help so she can feel" +
          "safe and comfrtable. with a 1 year old baby at home it's hard to find time every" +
          "weekend to learn her. So it's a project in process."
    p_3 ="This is my dream job, the thing that I always wanted to achive." +
          "Now this HUGE project is happening, and I couldn't be happier. 11 more months"
    @h1 = "my projects"
    @array_h2_p =[[h2_1, p_1],[h2_2, p_2], [h2_3, p_3]]
    @verb =["cook", "build", "make", "create", "throw away", "destroy"]
    @adjective =["sweet", "beautiful", "ugly", "green", "tall", "wet"]
    @none =["boat", "table", "diaper", "tv", "pillow", "computer"]
    erb :projects
  end

  get "/index" do
    @h1 ="Welcome to our website"
    erb :index
  end

end
