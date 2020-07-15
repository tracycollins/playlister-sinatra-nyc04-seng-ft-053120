class Artist < ActiveRecord::Base
    # An Artist can have multiple songs and multiple genres
    has_many :songs
    has_many :genres
end