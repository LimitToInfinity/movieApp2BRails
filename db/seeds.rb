# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
 @movie1 = Movie.create(title: 'Godzilla', release_date: 2019, in_theaters: true)
 @movie2 = Movie.create(title: 'Finding Nemo', release_date: 2004, in_theaters: false)
#   Character.create(name: 'Luke', movie: movies.first)
Showing.create(time: 1800, movie: @movie1 )
Showing.create(time: 1815, movie: @movie1 )
Showing.create(time: 1930, movie: @movie1 )
Showing.create(time: 2100, movie: @movie2 )
Showing.create(time: 2015, movie: @movie2 )
Showing.create(time: 1930, movie: @movie2 )
Showing.create(time: 1900, movie: @movie2 )