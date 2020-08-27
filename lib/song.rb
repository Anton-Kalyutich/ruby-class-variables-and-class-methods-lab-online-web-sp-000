class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize
    @@count += 1
    @@genres << @genre
    @@artists << @artist
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    hash = {}
    @@genres.each do |genre|
      hash.keys.include?(genre) ? hash[genre] += 1 : hash[genre] = 1
    end
    hash
  end
  
  def self.artist_count
    hash = {}
    @@artists.each do |artist|
      hash.keys.include?(artist) ? hash[artist] += 1 : hash[artist] = 1
    end
    hash
  end

end