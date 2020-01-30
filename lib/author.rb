require "pry"

class Author
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all = []
  end

  def self.all
    @@all
  end

  def add_post(post)
    post.author = self

    #binding.pry
    #binding.pry
  end

  def posts
    Post.all
  end

  def add_post_by_title(post_title)
    post2 = Post.new(post_title)
    post2.author = self
  end

  def self.post_count
    Post.all.count
  end
end
