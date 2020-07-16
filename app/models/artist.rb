class Artist < ActiveRecord::Base

    # An Artist can have multiple songs and multiple genres
    has_many :songs
    has_many :genres, through: :songs

    def self.find_by_slug(input_slug)
        Artist.select{ |artist_instance| artist_instance.slug == input_slug }.first
    end

    def slug
        sluggifier = Slugify.new
        sluggifier.slug(self.name)
    end
end