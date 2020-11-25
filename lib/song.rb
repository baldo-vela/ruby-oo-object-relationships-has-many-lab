# Song #new pushes new instances into a class variable called @@all upon initialization
 # Song .all is a class method that returns an array of all song instances that have been created
 # Song #name has a name
 # Song #artist belongs to an artist
 # Song #artist_name knows the name of its artist
 # Song #artist_name returns nil if the song does not have an artist
class Song
    attr_accessor :name, :artist

    #class array of all existant songs created using this class
    @@all = []

    def initialize(title_string)
        @name = title_string
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def artist=(given_artist)
        @artist= given_artist
    end

    def self.name
        @name
    end

    def artist_name
        return artist.name if artist
    end

end
