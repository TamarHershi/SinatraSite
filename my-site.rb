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
    @title_array = ["___Theme___", "____color____", "_love measure 1-10_" ]
    @array_stickers = [["princess", "pink", 9], ["Baloon", "blue with yellow dots", 8.5], ["broken umbrella", "green", 3], ["Hello Kitty", "pink", 10]]
    erb :stickers
  end

  get "/about" do
    bday = Time.new(1984, 9, 28)
    age = Time.new.year - bday.year
    fact1 = "I am a mother of two amazing daughers"
    fact2 = "I am a student in Ada Developer Academy"
    fact3 = "I hate spiders but love cats"
    fact4 = "I live in Seattle. I mean Kirkland"
    fact5 = "I am #{age} years old"
    @facts_array = [fact1, fact2, fact3, fact4, fact5]
    @h1 = "about"

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
