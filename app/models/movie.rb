class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end


  def reviews
    Review.all.select {|review| review.movie == self}
  end

  def reviewers
    self.reviews.collect {|review| review.viewer}
  end
  
  def average_rating
    sum = reviews.sum {|review| review.rating}
    count = reviews.count {|review| review.rating}
    sum.to_f / count.to_f
  end
    
  def self.highest_rated
    self.all.max_by {|movie| movie.average_rating}    
  end


end
