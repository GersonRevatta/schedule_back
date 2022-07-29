# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#  rake db:seed 
# Create users
# User.create(email: 'dos@gmail.com', password: 'asdfasdf', password_confirmation: 'asdfasdf')
  users = User.create(
    [ 
      { email: 'demo@gmail.com', password: 'demodemo', password_confirmation: 'demodemo', name: 'Demo'},
      { email: 'user_one@gmail.com', password: 'demodemo', password_confirmation: 'demodemo', name: 'User_one' },
      { email: 'user_two@gmail.com', password: 'demodemo', password_confirmation: 'demodemo', name: 'User_two' },
      { email: 'user_three@gmail.com', password: 'demodemo', password_confirmation: 'demodemo', name: 'User_three' }
    ]
  )
# Create clients
  clients = Client.create([
    { name: 'Empresa 1'},
    { name: 'Empresa 2'},
    { name: 'Empresa 3'}
  ])