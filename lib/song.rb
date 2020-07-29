class Song

  @@genres = []
  @@artists = []
  @@count = 0
  @@artist_count: {}
  @@genre_count: {}
  attr_writer :name
  attr_reader :name

  def initialize(name, artist, genre)
    @name = name
    self.artist=(artist)
    self.genre=(genre)
    @@count += 1
  end

  def artist=(input)
    @artist = input
    @@artists << input
  end

  def artist
    @artist
  end

  def artists
    rArray = []
    @@artists.each do | artist |
      if !(rArray.include?(artist))
        rArray << artist
        :@@artist_count[artist] = 1
      else
        :@@artist_count[artist] += 1
      end
    end
    return rArray
  end

  def artist_count
    @@artist_count
  end

  def genre=(input)
    @genre = input
    @@genres << input
  end

  def genre
    @genre
  end

  def genres
    rArray = []
    @@genres.each do | gen |
      if !(rArray.include?(gen))
        rArray << gen
        :@@genre_count[gen] = 1
      else
        :@@genre_count[gen] += 1
      end
    end
    return rArray
  end

  def genre_count
    @@genre_count
  end

  def name=(input)
    @name = input
  end

  def name
    @name
  end

  def count
    return @@count
  end

end
