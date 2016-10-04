class Song

  attr_accessor :name, :artist

  def initialize(name)
    self.name = name
  end

  def self.new_by_filename(file_name)
    song_data = file_name.split(" - ")
    new_song = self.new(song_data[1])
    new_song.artist = Artist.find_or_create_by_name(song_data[0])
    new_song.artist.add_song(new_song)
    new_song
  end

end
