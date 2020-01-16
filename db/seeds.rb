# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Example:
#
#   Person.create(first_name: 'Eric', last_name: 'Kelly')

Book.create!(title: 'Catch-22', author: 'Joseph Heller', rating: 100, favorite: true)
Book.create!(title: 'Catch-23', author: 'Broseph Keller', rating: 0)
Book.create!(title: 'Catch-24', author: 'Loseph Meller', favorite: false)


Checkout.create!(name: "Chris", book: Book.first)
Checkout.create!(name: "Zain", book: Book.last)
Checkout.create!(name: "Gabe", book_id: 2)

Category.create!(name: "Sci-Fi")
Category.create!(name: "Romance")
Category.create!(name: "Sci-Fi Romance")
