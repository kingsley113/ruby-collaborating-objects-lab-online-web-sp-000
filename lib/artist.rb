require 'pry'

class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def self.all
    ObjectSpace.each_object(Artist).to_a
    # all = []
    # self.each do |name|
    #   all << name
    # end
    # all
    #   binding.pry
  end




end
