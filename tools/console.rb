# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

the_300 = Movie.new('300')
v_for = Movie.new('V for Vendetta')

soundarya = Viewer.new('Soundarya')
ahmed = Viewer.new('Ahmed')

soundarya.rate_movie(the_300, 3.7)
soundarya.rate_movie(the_300, 4.3)

ahmed.rate_movie(the_300, 5.0)
ahmed.rate_movie(v_for, 4.3)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
