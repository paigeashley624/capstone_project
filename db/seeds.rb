require "faker"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Books:

# books = Book.create ([{ title: "The Alchemist", author_name: "Paulo Coelho", genre: "Fiction", img_url: "https://prodimage.images-bn.com/pimages/9780062315007_p0_v2_s550x406.jpg" }])
# books = Book.create ([{ title: "The Fire Next Time", author_name: "James Baldwin", genre: "Essay", img_url: "https://prodimage.images-bn.com/pimages/9780679744726_p0_v3_s550x406.jpg" }])
# books = Book.create ([{ title: "The Name of The Wind", author_name: "Patrick Ruthfuss", genre: "Fiction", img_url: "https://prodimage.images-bn.com/pimages/9780756404741_p0_v1_s550x406.jpg" }])
# books = Book.create ([{ title: "The Wise Mans Fear ", author_name: "Paulo Coelho", genre: "Fiction", img_url: "https://prodimage.images-bn.com/pimages/9780756407124_p0_v1_s550x406.jpg" }])
# books = Book.create ([{ title: "The Water Dancer ", author_name: "Ta-Nehisi Coates", genre: "Fiction", img_url: "https://prodimage.images-bn.com/pimages/9780399590610_p0_v2_s550x406.jpg" }])
# books = Book.create ([{ title: "Between The World and Me", author_name: "Ta-Nehisi Coates", genre: "Fiction", img_url: "https://prodimage.images-bn.com/pimages/9780812993547_p0_v5_s550x406.jpg" }])
# books = Book.create ([{ title: "The Hill We Climb ", author_name: "Amanda Gorman", genre: "Fiction", img_url: "https://prodimage.images-bn.com/pimages/9780593465271_p0_v4_s550x406.jpg" }])
# books = Book.create ([{ title: "The Four Winds ", author_name: "Kristin Hannah", genre: "Fiction", img_url: "https://prodimage.images-bn.com/pimages/9781250178602_p0_v8_s550x406.jpg" }])
books = Book.create ([{ title: "The Midnight Library ", author_name: "Matt Haig", genre: "Fiction", img_url: "https://prodimage.images-bn.com/pimages/9780525559474_p0_v6_s550x406.jpg", overview: Faker::Overview.overview }])
