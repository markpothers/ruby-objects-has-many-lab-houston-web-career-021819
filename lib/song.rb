require 'pry'

class Song
  attr_accessor :title, :artist

  @@all = []

  def initialize(name, artist="none")
       @name = name
       @artist = artist
       @@all << self
  end
  
  def name
    @name
  end

  def name=(name)
    @name = name
  end
  
  def self.all
    @@all
 end

def artist_name
  if self.artist == "none"
    return nil
  else
  self.artist.name
  end
end

end

