# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
SchoolClass.create(title: "Gustav Vasa", room_number: 5)
SchoolClass.create(title: "Ada Lovelace", room_number: 7)

Student.create("Lily", "Tomlin")
Student.create("Robin", "Johnson")
