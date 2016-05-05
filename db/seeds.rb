# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# TODO: destroy by hand (rails db:drop)
# Product.destroy_all
# User.destroy_all

will = User.create!(email: 'contact@vigiefood.org', password: 'testtest')
max = User.create!(email: 'vigiefood@yahoo.fr', password: 'testtest')

Kudoz = Product.create!(user: max, name: "Kudoz", url: "http://getkudoz.com", tagline: "Tinder for job search", category: "tech")
uSlide = Product.create!(user: max, name: "uSlide", url: "http://uslide.io", tagline: "Youtube sucks for education", category: "design")
Vigiefood = Product.create!(user: will, name: "Vigiefood", url: "http://vigiefood.org", tagline: "Goûtez la confiance", category: "education")

#upvotes?

Kudoz.upvotes.create! user: max
Kudoz.upvotes.create! user: will
Vigiefood.upvotes.create! user: will
uSlide.upvotes.create! user: will

