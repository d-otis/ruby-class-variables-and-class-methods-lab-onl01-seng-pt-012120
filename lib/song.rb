require "pry"

class Song
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count =+ 1
    @@genres << @genre
    @@artists << @artist
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    # returns an array of all the genres of existing songs
    # control for duplicates
    unique_array = []
    @@genres.each do |genre|
      if !unique_array.include?(genre)
        unique_array << genre
      end
      unique_array
    end
  end
  
  def self.artists
    # returns an array of unique artists, no duplicates
  end
  
  def genre_count
    # returns a hash
    # {"rap" => 5, "rock" => 1, "country" => 3}
  end
  
  def artist_count
    # returns a hash similar to the hash in genre_count
  end

end