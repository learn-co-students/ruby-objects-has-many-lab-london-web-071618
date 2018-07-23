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
    if self.author
      #if self (post instance) has an author
      return self.author.name
      #return the author name in this instance of self
    else
      #if the author doesnt have an author
      return nil
    end
  end

end
