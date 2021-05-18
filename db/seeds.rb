# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Guest.create(
  first_name: 'Wayne',
  last_name:  'Woodbridge',
  phone:      '639123456789',
  email:      'wayne_woodbridge@bnb.com'
)
