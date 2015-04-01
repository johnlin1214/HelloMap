# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Shout.create!(message: "Hello?!", lat: 37.7820, lng: -122.4141)
Shout.create!(message: "Hi from San Francisco!", lat: 37.792041, lng: -122.432842)
Shout.create!(message: "Not Google Maps!", lat: 37.764362, lng: -122.422371)
Shout.create!(message: "Hey from David", lat: 37.774470, lng: -122.471015)
Shout.create!(message: "Hello World!", lat: 37.782159, lng: -122.409110)

