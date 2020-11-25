class Artist
    attr_accessor :name, :songs

     def initialize(name)
         @name = name
         @songs = []
     end

     def name=(name)
         self.name = name
     end

     def songs
        Song.all.select {|a_song| a_song.artist == self}
    
     end

     def add_song(name)
        name.artist = self
        name.save
     end

     def add_song_by_name(name)
        name = Song.new(name)
        name.artist = self
     end

     def self.song_count
        Song.all.uniq.count
     end

end