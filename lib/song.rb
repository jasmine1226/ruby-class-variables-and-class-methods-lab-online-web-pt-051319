class Song
  attr_accessor :name, :artist, :genre
  @@song_count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@song_count +=1

    if @@artists.include?(artist) == false
      @@artist << artist
    end

    if @@genres.include?(genre) == false
      @@genres << genre
    end
  end

  def self.count
    @@album_count
  end

  def self.artists
    @@artists
  end

  def self.genres
    @@genres
  end
end
