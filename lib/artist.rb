require 'pry'

class Artist
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    #binding.pry
    @name = name
<<<<<<< HEAD
    @songs = []
=======
>>>>>>> 64bff620d1b1ee507aee277128c8b15f51a5321e
    save
  end
  
  def save
    @@all.push(self)
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
<<<<<<< HEAD
    @songs << song
  end
  
  def songs
    @songs
=======
    Song.artist = self
  end
  
  def songs
    Song.all.select{|song| song.artist == self.name}
>>>>>>> 64bff620d1b1ee507aee277128c8b15f51a5321e
  end
  
  def self.find_or_create_by_name(artist_name)
    if self.all.any? { |artist| artist.name == artist_name}
      self.all.find {|artist| artist.name == artist_name}
    else
      artist_name = self.new(artist_name)
    end
  end
      
  def print_songs
<<<<<<< HEAD
    @songs.each {|song| puts song.name} 
=======
    Song.all.select{||song.artist == self.name}.name
>>>>>>> 64bff620d1b1ee507aee277128c8b15f51a5321e
  end
  
end