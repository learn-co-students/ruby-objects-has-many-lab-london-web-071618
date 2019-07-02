class Song
  
  @@all = []
  attr_accessor :name, :artist, :song

  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def artist_name
    if self.artist
      return self.artist.name
    else
      return nil
    end
  end
end