class Author
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def add_post(post)
    post.author = self
    #binding.pry
  end

  def posts
    Post.all
  end

  def add_post_by_title(post_title)
    post1 = Post.new(post_title)
    post1.author = self
  end

  def self.post_count
    Post.all.count
  end
end
