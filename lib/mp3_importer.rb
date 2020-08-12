require 'pry'

class MP3Importer

  def initialize(file_path)
    files(file_path)
  end

def files(path)
  # binding.pry
  files = Dir.entries("#{path}").select {|f| !File.directory? f}
  binding.pry
end



def import


end






end
