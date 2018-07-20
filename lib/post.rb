class Post
  attr_accessor :title, :author, :name
  @@all = []
  def initialize(title)
    @title = title
    @@all << self
  end

  def author_name
    if self.author == nil
      nil
    else
      author.name
    end
  end
end
