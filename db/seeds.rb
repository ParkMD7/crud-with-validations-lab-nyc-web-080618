Song.destroy_all

puts "Makin Songs"
Song.create([
  { title: "Dreams", released: true, release_year: 1974, artist_name: "Fleetwood Mac", genre: "Rock" },
  { title: "Uptown", released: true, release_year: 2009, artist_name: "Drake", genre: "Rap" },
  { title: "Thriller", released: true, release_year: 1982, artist_name: "Michael Jackson", genre: "Pop" },
  { title: "Backstreets Back", released: true, release_year: 1999, artist_name: "Backstreet Boys", genre: "Pop" }
  ])
puts "Done. Made #{Song.count} Songs"
