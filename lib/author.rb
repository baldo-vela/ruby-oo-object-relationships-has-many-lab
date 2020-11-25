class Author
    attr_accessor :name

    def initialize(name)
        @name = name
        @posts = []
    end

    def name=(name)
        self.name = name
    end

    def posts
        Post.all.select {|a_post| a_post.author == self}
    end
    
    def add_post(name)
        name.author = self
        name.save
    end

    def add_post_by_title(name)
        name = Post.new(name)
        name.author = self
    end

    def self.post_count
        Post.all.uniq.count
    end
end