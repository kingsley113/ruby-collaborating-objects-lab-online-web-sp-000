require 'pry'

class Song
  attr_accessor :artist, :title

  @@all = []

  def initialize(artist, title)
    @artist = artist
    @title = title
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end








end