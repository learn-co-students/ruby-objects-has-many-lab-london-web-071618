require_relative'artist'

class Song

attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end

  def self.all
    @@all
  end

  def song_count
    @@all.count
  end


end
#
# song = Song.new("Casey's song")
# binding.pry
