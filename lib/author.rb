class Author
  
  attr_accessor :name, :posts
  
  @@all = []
  
  def initialize(name=nil, posts)
    @name = name
    @posts = posts
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def add_post(message)
    message.author = self
    @@all << message
  end
  
  def add_post_by_title(post_title)
    tweet = Post.new(post_title)
    tweet.author = self
    @@all << tweet
  end
  
  def post_count
    Post.all.count {|message| message.author == self.name}
  end

end