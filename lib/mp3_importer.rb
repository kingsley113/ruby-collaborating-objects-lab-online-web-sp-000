require 'pry'

class MP3Importer

  def initialize(file_path)
    files(file_path)
  end

def files(path)
  binding.pry
  Dir["#{path}"]
  # binding.pry
end



def import


end






end
