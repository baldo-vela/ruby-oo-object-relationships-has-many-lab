class Post
    attr_accessor :title, :author

    #class array of all posts
    @@all = []

    def initialize(title)
        @title = title
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def author=(author_name)
        @author = author_name
    end

    def self.name
        @title
    end

    def author_name
        return author.name if author
    end
end