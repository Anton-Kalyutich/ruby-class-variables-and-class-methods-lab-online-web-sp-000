class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  
  def initialize
    @@count += 1
    @@genres << @genre
  end
  
  def self.count
    @@count
  end
  
  def genres
    @@genres
  end
end