class Author

  @@post_count = 0
  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    @@post_count += 1
    post.author = self
  end

  def add_post_by_title(post_title) #takes in a string
    post = Post.new(post_title)
    add_post(post)
  end

  def self.post_count
    @@post_count
  end

end
