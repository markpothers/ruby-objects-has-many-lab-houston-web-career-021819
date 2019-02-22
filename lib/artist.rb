require 'pry'

class Artist
  attr_accessor :name

  @@songs = []

  def initialize(name)
       @name = name
       @songs = []
  end

  def name
    @name
  end

  def name=(name)
    @name = name
 end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@songs << self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    @@songs << self
  end

  def self.song_count
    @@songs.length
  end


end

