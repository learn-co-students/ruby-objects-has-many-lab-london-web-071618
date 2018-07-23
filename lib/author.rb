class Author

  attr_accessor :name, :post, :title

@@all = []

def initialize(name)
  @name = name
  @posts = []
  @@all << self
end

def posts
  @posts
end

def add_post(post)
post.author = self
@posts << post
end

def add_post_by_title(title)
  post = Post.new(title)
  post.author = self
  @posts << post
end

def self.post_count
  Post.all.count
end

def self.all
  @@all
end 



end
