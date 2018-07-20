require 'pry'
class Song

attr_accessor :name, :artist

@@all = []

  def initialize(song_name)
    @name =song_name
    @@all << self
  end

  def artist_name
    self.artist == nil ? nil : artist.name
  end

end
