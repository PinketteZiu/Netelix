require 'faker'

Movie.destroy_all

puts 'Creating 20 fake movies...'
20.times do
  movie = Movie.new(
    title: Faker::Movie.title,
    director: Faker::Name.name,
    actors: "#{Faker::Name.name}, #{Faker::Name.name}, #{Faker::Name.name}",
    synopsis: Faker::Lorem.paragraph(sentence_count: 2)
  )
  movie.save!
end
puts 'Finished!'
