require 'pry'

class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def self.all
    self.collect
  end




end
