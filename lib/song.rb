require 'pry'

class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name, artist = "")
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
    Artist.find_or_create_by_name(name)

  end

  def self.new_by_filename(filename)
    song_info = filename.split(" - ")

    song = self.new(song_info[1], song_info[0])
    # binding.pry
    # song.name = filename.split(" - ")[1]
    # song.artist = filename.split(" - ")[0]
    # binding.pry
    song
  end

end
