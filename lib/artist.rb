require 'pry'

class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def self.all
    self.name
    # all = []
    # self.each do |name|
    #   all << name
    # end
    # all
    #   binding.pry
  end




end
