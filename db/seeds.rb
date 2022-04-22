# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

urls = [
  "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg",
  "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg",
  "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg",
  "https://www.themoviedb.org/t/p/original/1uegR4uAxRxiMyX4nQnpzbXhrTw.jpg",
  "https://www.themoviedb.org/t/p/original/fmIp40ev4VGquK2bMo52PQgaV2d.jpg",
  "https://www.themoviedb.org/t/p/original/pBSqH6avxduNAnXhyIkcAfcUMJ0.jpg",
  "https://www.themoviedb.org/t/p/original/3H1WFCuxyNRP35oiL2qqwhAXxc0.jpg",
  "https://www.themoviedb.org/t/p/original/jloyGeVYZSxM9zsLFvVOWuj2ey4.jpg",
  "https://www.themoviedb.org/t/p/original/vEk7UCNrozSc09bpakMF7xp7YqQ.jpg",
  "https://www.themoviedb.org/t/p/original/9XnA5B8mTDpKkm6BdFcPWTpaSuu.jpg",
  "https://www.themoviedb.org/t/p/original/wJJt1HG62h3WoGnLcRIbO2nNNkg.jpg",
  "https://www.themoviedb.org/t/p/original/hyN61TWnsRqGY9vunR9wpLBzPpa.jpg",
  "https://www.themoviedb.org/t/p/original/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg",
  "https://www.themoviedb.org/t/p/original/nJUHX3XL1jMkk8honUZnUmudFb9.jpg",
  "https://www.themoviedb.org/t/p/original/4WijEAbnGMJifP6uepGALci3Jf.jpg",
  "https://www.themoviedb.org/t/p/original/lnKq1Ote36Kln8RhTKboch6NEXs.jpg",
  "https://www.themoviedb.org/t/p/original/uluH4IS17pSlLcndLA94Z6fkjRg.jpg",
  "https://www.themoviedb.org/t/p/original/cOkx3uu5FVgC902Q6Y3MxLpBWbX.jpg",
  "https://www.themoviedb.org/t/p/original/p0aD6sXMMpEIjmrsRhVuhn8YV3p.jpg",
  "https://www.themoviedb.org/t/p/original/odVv1sqVs0KxBXiA8bhIBlPgalx.jpg"
]

puts 'Doing some last minute cleaning...'
Movie.destroy_all

puts 'Baking some fresh new movies...'
30.times do
  movie = Movie.create(
    title: Faker::Movie.title,
    overview: Faker::Movie.quote,
    poster_url: urls.sample,
    rating: rand(0.0..10).round(1)
  )
  puts "- #{movie.title} fresh out the oven!"
end
sleep(1)
puts "Done, the oven's off"
