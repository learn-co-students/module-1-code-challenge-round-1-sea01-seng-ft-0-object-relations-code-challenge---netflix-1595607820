class Review
  attr_reader :viewer, :movie
  attr_accessor :rating

  @@all = []

  def initialize(viewer, movie, rating)
    @viewer, @movie, @rating = viewer, movie, rating

    save
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
end
