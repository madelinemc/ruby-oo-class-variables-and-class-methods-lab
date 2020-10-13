class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@artists << @artist
        @@genres << @genre
    end

    def self.count
        @@count
    end

    def self.artists #class method, returns array of all artists of existing songs
        all_songs_no_dupes = []
        all_songs_no_dupes = @@artists.uniq
        all_songs_no_dupes
    end

    def self.genres #class method, returns array of all genres of existing songs. no duplicate genres. 
        all_genres_no_dupes = @@genres.uniq
        all_genres_no_dupes
    end
    
    def self.genre_count #class method, returns hash where keys are the names of each genre and value is number of songs in that genre
        genre_count_of_songs = {}
        @@genres.each do |genre|
            if genre_count_of_songs[genre]
                genre_count_of_songs[genre] += 1
            else
                genre_count_of_songs[genre] = 1
            end
        end
        genre_count_of_songs
    end

    def self.artist_count #class method, returns histogram as above but for artists
        artist_count_of_songs = {}
        @@artists.each do |artist|
            if artist_count_of_songs[artist]
                artist_count_of_songs[artist] += 1
            else 
                artist_count_of_songs[artist] = 1
            end
        end
        artist_count_of_songs
    end
    

end

