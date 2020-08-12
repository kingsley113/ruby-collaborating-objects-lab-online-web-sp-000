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

  def add_song(song)
    song.artist = self
  end

  def songs
    Song.collect {|artist| Song.artist == artist}
  end

  def find_or_create_by_name(name)
    if (self.nil?)
      self.new(name)
    else
      self.name = name
    end
  end

end
