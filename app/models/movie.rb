class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title

    save
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  #Instance methods that fetch data
  def reviews
    Review.all.select { |review| review.movie == self }
  end

  def viewers
    reviews.map(&:viewer)
  end

  def average_rating
    (reviews.map(&:rating).sum.to_f / reviews.length).round(1)
  end

  #Class methods that fetch data
  def self.highest_reviewed
    all.max_by(&:average_rating)
  end
end
