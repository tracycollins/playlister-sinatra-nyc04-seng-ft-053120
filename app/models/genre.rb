class Genre < ActiveRecord::Base

    # A Genre can have multiple artists and multiple songs
    has_many :song_genres
    has_many :songs, through: :song_genres
    has_many :artists, through: :songs
    
    def self.find_by_slug(input_slug)
        Genre.select{ |genre_instance| genre_instance.slug == input_slug }.first
    end

    def slug
        sluggifier = Slugify.new
        sluggifier.slug(self.name)
    end

end