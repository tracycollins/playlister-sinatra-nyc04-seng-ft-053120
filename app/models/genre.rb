class Genre < ActiveRecord::Base
    # A Genre can have multiple artists and multiple songs
    has_many :artists
    has_many :song_genres
    has_many :songs, through: :song_genres
end