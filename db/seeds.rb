# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Book.destroy_all

User.create(email: 'robert@test.com',password: 'password', password_confirmation: 'password', name: 'Robert', role: User.roles[:admin])

User.create(email: 'billy@test.com',password: 'password', password_confirmation: 'password', name: 'Billy')



10.times do |x|
    book = Book.create(title: "Title #{x}",
                       description: "Description #{x} Many a book",
                       author: "Author #{x} Writer",
                       user_id: User.first.id)
    end
