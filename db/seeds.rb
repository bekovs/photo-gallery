# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
admin_user = User.create(name: 'Admin', email: 'admin@gmail.com', password: 'adminadmin', password_confirmation: 'adminadmin', admin: true)

usrs = User.create([{ name: 'Peter', email: 'peter@gmail.com', password: 'qwerty', password_confirmation: 'qwerty' }, 
										{ name: 'John', email: 'john@gmail.com', password: 'qwerty', password_confirmation: 'qwerty' },
										{ name: 'Clara', email: 'clara@gmail.com', password: 'qwerty', password_confirmation: 'qwerty' },
										{ name: 'Jenny', email: 'jenny@gmail.com', password: 'qwerty', password_confirmation: 'qwerty' },
										{ name: 'Amanda', email: 'amanda@gmail.com', password: 'qwerty', password_confirmation: 'qwerty' }])