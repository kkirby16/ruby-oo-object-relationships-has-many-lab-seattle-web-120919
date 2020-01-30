require "pry"

class Artist
  attr_accessor :name

  def initialize(name)
    @name = name

    #binding.pry
  end #you only can call classes on class methods.

  def songs
    Song.all
  end

  def add_song(song)
    song.artist = self
    #binding.pry
  end

  def add_song_by_name(song)
    song = Song.new(song)
    song.artist = self
  end

  def self.song_count
    Song.all.count
    # binding.pry
  end
end
