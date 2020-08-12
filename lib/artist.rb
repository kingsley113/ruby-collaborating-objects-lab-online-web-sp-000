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
    Song.all.select {|song| song.artist == self}
  end

  def self.find_or_create_by_name(name)
    if @@all.find {|artist| artist == name}
      @@all.find {|artist| artist == name}
    else
      self.new(name)
    end
    # if @name != name
    #   self.new(name)
    # else
    #   add_song(name)
    # end
    # binding.pry
  end

end
