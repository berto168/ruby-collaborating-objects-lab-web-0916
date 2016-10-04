require 'pry'
class MP3Importer
  attr_accessor :path

  def initialize(path)
    self.path = path
  end

  def files
    Dir.entries(path).select {|file| !File.directory? file}
  end

  def import
    files.each {|file| Song.new_by_filename(file)}
  end

end
