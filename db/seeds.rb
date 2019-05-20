# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# 10.times do
# SongBoard.create(name:Faker::Music.genre, image:Faker::LoremPixel.image("290x310"))
# end


# 50.times do
# Artist.create(name:Faker::Music.band, image:Faker::Blockchain::Bitcoin.address)
# end





# 666.times do
#   verb = ""
#   noun = ""
#   album_noun = ""
#   album_descriptor = ""
#   case rand(1..3)
#     when 1
#       verb = Faker::Verb.base
#     when 2
#       verb = Faker::Verb.past_participle
#     when 3
#       verb = Faker::Verb.ing_form
#   end

#   case rand(1..3)
#     when 1
#       noun = Faker::Hipster.word
#     when 2
#       noun = Faker::Food.dish
#     when 3
#       noun = Faker::Science.element
#   end


#   case rand(1..3)
#   when 1
#     album_noun = Faker::Demographic.demonym
#   when 2
#     album_noun = Faker::Coffee.blend_name
#   when 3
#     album_noun = Faker::Dessert.variety
#   end

#   case rand(1..3)
#   when 1
#     album_descriptor = Faker::Demographic.marital_status
#   when 2
#     album_descriptor = Faker::Coffee.variety
#   when 3
#     album_descriptor = Faker::Science.element
#   end

#   Song.create!(
#     name: "#{verb} #{noun}",
#     album: "#{album_descriptor} #{album_noun}",
#     year:rand(1960..2019).to_s, 
#     artist_id:rand(1..50)
#   )
# end

# Song.all.each do |song|
# song.update(rating: rand(3500..10000))
# end


### reset the ids.  this is a filthy filthy hack
# new_id = 1
# SongBoard.all.each do |board| 
#   board.update(id: new_id)
#   new_id += 1
# end

# Song.all.each do |song|
# song.update(rating: rand(3500..10000))
# end

Song.all.each do |song|
  song.update(song_board_id: rand(1..17))
end