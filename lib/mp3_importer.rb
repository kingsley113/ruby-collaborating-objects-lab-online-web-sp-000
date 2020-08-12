require 'pry'

class MP3Importer
  attr_accessor :files
  def initialize(file_path)
    files(file_path)
  end

  def files(path)
    # binding.pry
    @files = Dir.entries("#{path}").select {|f| !File.directory? f}
    # binding.pry
  end


  def import
    @files.each {|file| Song.new_by_filename(file)}
  end


end
