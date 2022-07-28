class Song
    
    attr_accessor :name, :artist , :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count 
        @@count
    end

    def self.genres
        filtred = []
        @@genres.each {|i| filtred << i unless filtred.include?(i)}
        filtred
    end

    def self.artists
        filtred = []
        @@artists.each {|i| filtred << i unless filtred.include?(i)}
        filtred
    end

    def self.genre_count
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end

end