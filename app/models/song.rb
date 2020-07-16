class Song < ActiveRecord::Base

    # A Song can belong to ONE Artist and multiple genres
    belongs_to :artist
    has_many :song_genres
    has_many :genres, through: :song_genres

    def self.find_by_slug(input_slug)
        binding.pry
        Song.select{ |song_instance| song_instance.slug == input_slug }.first
        binding.pry
    end

    def slug
        sluggifier = Slugify.new
        sluggifier.slug(self.name)
    end
end