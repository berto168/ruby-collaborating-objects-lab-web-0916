class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    self.name = name
    self.songs = []
    save
  end

  def add_song(song)
    self.songs << song
  end

  def save
    self.class.all << self
  end

  def self.find_or_create_by_name(name)
    artist = self.all.detect {|artist| artist.name == name}
    artist ||= self.new(name)
  end

  def print_songs
    self.songs.each {|song| puts song.name}
  end

  def self.all
    @@all
  end

end
