require "pry"

class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def songs
    Song.all
  end

  def add_song(song)
    song.artist = self
    #binding.pry
  end

  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    new_song.artist = self
    #binding.pry
  end

  def self.song_count
    Song.all.count
  end  #call class methods with the class
end
