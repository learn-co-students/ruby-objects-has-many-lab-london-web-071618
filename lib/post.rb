require 'pry'
require_relative 'post.rb'

class Post

attr_accessor :title, :author

  @@all = []

  def initialize(post_title)
    @title =post_title
    @@all << self
  end

  def author_name
    self.author == nil ? nil : author.name
  end

end
