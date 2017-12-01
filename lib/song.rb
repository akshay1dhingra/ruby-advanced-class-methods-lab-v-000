require 'pry'
class Song
  attr_accessor :namee, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = Song.new
    song.save
    song
  end

  def self.new_by_name(song_name)
    binding.pry
    song = self.new
    song.namee = song_name
    song
  end


end
