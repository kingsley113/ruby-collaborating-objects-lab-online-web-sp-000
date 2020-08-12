require 'pry'

class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(name)
    Song.artist = name
  end

  def songs
    Song.collect {|artist| Song.artist == artist}
  end

end
