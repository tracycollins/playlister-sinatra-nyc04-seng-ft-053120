# Add seed data here. Seed your database with `rake db:seed`

Artist.destroy_all
Genre.destroy_all
Song.destroy_all
SongGenre.destroy_all

a1 = Artist.create(name: "Debbie")
a2 = Artist.create(name: "Bob")

g1 = Genre.create(name: "Rock")
g2 = Genre.create(name: "Pop")

# s1 = Song.create(name: "Hey", artist_id: a1.id)
# s2 = Song.create(name: "What?", artist_id: a2.id)

s1 = Song.create(name: "Hey", artist: a1)
s2 = Song.create(name: "What?", artist: a2)

sg1 = SongGenre.create(song: s1, genre: g2)
sg2 = SongGenre.create(song: s2, genre: g1)
