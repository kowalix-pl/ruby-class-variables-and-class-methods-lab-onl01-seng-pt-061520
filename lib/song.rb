require 'pry'
class Song 
  

attr_accessor :name, :artist, :genre
@@count = 0 
@@artists = []
@@genres = []


def initialize(name,artist,genre)
  @name = name 
  @artist = artist
  @@artists << artist
  @genre = genre
  @@genres << genre
  @@count += 1
end

def self.count
  @@count 
end 

def self.artists
  @@artists.uniq
end 
def self.genres
#returns an array of all of the genres of existing songs (only uniq)s  
  @@genres.uniq
end 

def self.genre_count
#keys = names of each genre 
#values = number of songs that have that genre

 ghash = Hash.new(0)
 @@genres.each { |genre| ghash[genre] += 1 }
  counts
# binding.pry
end 

def self.artist_count
  
end 

end 