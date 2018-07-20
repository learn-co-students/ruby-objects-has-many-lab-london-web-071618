require 'pry'
require_relative 'post'

class Author
  attr_accessor :name, :posts

  @@all = []

  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_post(post)
    post.author = self
    @posts.push(post)
  end

  def add_post_by_title(post_title)
    new_post = Post.new(post_title)
    @posts.push(new_post)
    new_post.author = self
  end

  def self.post_count
    post_count = 0
    self.all.each do |author|
      post_count += author.posts.size
    end
    return post_count
  end

end
