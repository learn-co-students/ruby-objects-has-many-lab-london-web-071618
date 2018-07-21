require "pry"
class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def add_song(song)
    #Here artist attribute can be added to created song via getter setter method
    #within the Song class. (See song Class for further details)
    song.artist = self
    @songs << song
    #The song is stored in the Artist instance songs array.
    #In real world terms, song is added to Artist's discogragphy/repitoire
  end

  def add_song_by_name(song)
    song = Song.new(song)
    song.artist = self
    @songs << song
  end

  def self.song_count
    Song.all.count
    #binding.pry
  end

end
