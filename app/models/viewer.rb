class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username

    save
  end
  
  def self.all
    @@all
  end
  
  def save
    self.class.all << self
  end

  #Instnace methods that assign data
  def rate_movie(movie, rating)
    if reviewed_movie?(movie)
      reviews.find { |review| review.movie == movie }.rating = rating
    else
      Review.new(self, movie, rating)
    end
  end

  #Instance methods that fetch data
  def reviews
    Review.all.select { |review| review.viewer == self }
  end

  def reviewed_movies
    reviews.map(&:movie)
  end

  def reviewed_movie?(movie)
    reviewed_movies.include?(movie)
  end
end
