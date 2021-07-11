class Song
    attr_accessor :name, :artist, :genre
    @@count=0
    @@artists=[] 
    @@genres=[]

    def initialize(name,artist,genre)
        @name=name
        @artist=artist
        @genre=genre
        @@count += 1
        @@artists << artist
        @@genres << genre

    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end
    def self.genres
        @@genres.uniq
    end
    def self.genre_count
        obj={}
        @@genres.each do |name|
            if obj[name]
                obj[name] += 1
            else
                obj[name] = 1
            end
        end
        obj
    end
    def self.artist_count
        art={}
        @@artists.each do |name|
            if art[name]
                art[name] += 1
            else
                art[name] = 1
            end
        end
        art
    end
end