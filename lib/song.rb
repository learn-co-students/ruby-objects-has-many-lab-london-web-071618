class Song

attr_accessor :artist, :name
#Having artist here in the accessor allows us to add the attribute later
#in the Artist class. (When associating the created song to the Artist)

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end


  def artist_name
    if self.artist == nil
      nil
    else
    self.artist.name
  end 
  end
end
