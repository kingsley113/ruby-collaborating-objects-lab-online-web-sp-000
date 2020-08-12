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

  def self.all
    @@all
  end

  def artist_name=(name)
    name.find_or_create_by_name

  end

  def new_by_filename(filename)
    song = self.new
    song.title = filename.split(" - ")[1]
    song
  end

end
