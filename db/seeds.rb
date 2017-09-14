# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Wipe the database
Album.destroy_all
# Let's create a bunch of albums

10.times do
  Album.create(
  title: FFaker::Music.album,
  artist: FFaker::Music.artist,
  year: FFaker::Vehicle.year,
  cover_art: FFaker::Book.cover,
  song_count: FFaker::Vehicle.engine_cylinders,
  )
end
# Album.create([
#   {
#     title: "On Avery Island",
#     artist: "Neutral Milk Hotel",
#     year: 1996,
#     cover_art: "https://upload.wikimedia.org/wikipedia/en/7/73/On_avery_island_album_cover.jpg",
#     song_count: 12
#   },
#   {
#     title: "Everything All the Time",
#     artist: "Band of Horses",
#     year: 2006,
#     cover_art: "https://upload.wikimedia.org/wikipedia/en/5/51/BandofHorsesEverythingalltheTime.jpg",
#     song_count: 10
#   },
#   {
#     title: "The Flying Club Cup",
#     artist: "Beirut",
#     year: 2007,
#     cover_art: "https://upload.wikimedia.org/wikipedia/en/4/4c/The_Flying_Club_Cup.jpg",
#     song_count: 13
#   }
# ])
