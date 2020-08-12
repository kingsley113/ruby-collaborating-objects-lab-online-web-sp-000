require 'pry'

class Song
  attr_accessor :artist

  @@all = []

  def initialize(artist)
    @artist = artist
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end








end
