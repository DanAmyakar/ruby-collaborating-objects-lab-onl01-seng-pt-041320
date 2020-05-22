require 'pry'

class Song
  attr_accessor :name, :artist
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def save
    @@all << self
  end
  
  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(filename)
    file_data = filename.chomp('.mp3').split(' - ')
<<<<<<< HEAD
    song = self.new(file_data[1])
    song.artist_name= file_data[0]
    song
  end
  
  def artist_name=(artist_name)
    #binding.pry
    self.artist = Artist.find_or_create_by_name(artist_name)
=======
    song = self.new
    song.name = file_data[1]
    song.artist_name(file_data[0])
  end
  
  def artist_name=(artist_name)
    Artist.find_or_create_by_name(artist_name)
    self.artist(artist_name)
>>>>>>> 64bff620d1b1ee507aee277128c8b15f51a5321e
  end
  
end
