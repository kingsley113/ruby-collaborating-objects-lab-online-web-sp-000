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
    # all = []
    # self.each do |name|
    #   all << name
    # end
    # all
    #   binding.pry
  end




end
