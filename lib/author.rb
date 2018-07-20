
require 'pry'
require_relative 'post.rb'

class Author

attr_accessor :name, :posts

    @@all = []

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    post.author = self
    @posts << post
    @@all << post
  end

  def add_post_by_title(title)
    new = Post.new(title)
    add_post(new)
  end

  def self.post_count
    @@all.length
  end

end
