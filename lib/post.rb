class Post
  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    if self.author == nil #we do self the author because then it will compare author ids rather than names where there could be two people with the same name.
      nil
    else
      self.author.name
      # binding.pry
    end
  end
end
