class Artist
  
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name=nil)
    @songs = []
    @name = name
  end
  
  def self.all
    @@all
  end
  

  def add_song(new_song)
    new_song.artist = self
    @songs << new_song
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    @songs << song
  end
  
  def song_count
    songs = @songs
    songs.length
  end
  
end