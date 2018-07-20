# require 'pry'
# require_relative 'song.rb'

class Author
  attr_accessor :name, :posts, :all
  @@all = []
  def initialize(name=nil)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@all << post

  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    add_post(post)
  end

  def self.post_count
    @@all.count
  end

end

