class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end
  
  def reviews
    Review.all.select {|review| review.viewer == self}
  end

  def reviewed_movies
    self.reviews.collect {|review| review.movie}
  end


  def reviewed_movie?(movie)
      self.reviewed_movies.include?(movie)
  end

  def rate_movie(movie, rating)
    if reviewed_movie?(movie)
      new_rating = self.reviews.select {|review| review.movie == movie }
      new_rating.collect {|review| review.rating = rating}
      new_rating
    else
      Review.new(self, movie, rating)
    end
  end

end
