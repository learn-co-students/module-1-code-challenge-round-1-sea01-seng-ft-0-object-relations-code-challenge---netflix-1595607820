# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

movie1 = Movie.new ("Movie1")
movie2 = Movie.new ("Movie2")
movie3 = Movie.new ("Movie3")


user1 = Viewer.new("Name1")
user2 = Viewer.new("Name2")
user3 = Viewer.new("Name3")


review1 = Review.new(user1, movie1, 9)
review3 = Review.new(user3, movie1, 6)
review2 = Review.new(user2, movie1, 6)
# review13 = Review.new(user1, movie3, 5)
review12 = Review.new(user1, movie2, 4)
review22 = Review.new(user2, movie2, 2)
review32 = Review.new(user3, movie2, 3)
review23 = Review.new(user2, movie3, 5)
review33 = Review.new(user3, movie3, 5)


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
