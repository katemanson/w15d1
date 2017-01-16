# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongsIde the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Show.delete_all
shows = Show.create([
  {
    "title": "The Great British Bake Off",
    "series": 7,
    "description": "Master bakers Mary and Paul and the incomparable presenting duo Mel and Sue are back for another interesting series about baking cakes.",
    "image": "placeholder.jpg",
    "programmeId": "sugarRush" 
  },
  {
    "title": "Sherlock",
    "series": 4,
    "description": "Alone and defenceless, Sherlock and Dr Watson face their greatest ever challenge.",
    "image": "placeholder.jpg",
    "programmeId": "221b" 
  },
  {
    "title": "Dragon's Den",
    "series": 14,
    "description": "Aspiring entrepreneurs and inventors pitch for the Dragons' support.",
    "image": "placeholder.jpg",
    "programmeId": "moMoney" 
  },
  {
    "title": "Thailand: Earth's Tropical Paradise",
    "series": 1,
    "description": "The varied terrains and wildlife of Thailand.",
    "image": "placeholder.jpg",
    "programmeId": "awwwww" 
  },
  {
    "title": "Panorama: Trump: The Kremlin Candidate?",
    "series": 52,
    "description": "Would the world be safer if Trump and Putin stay friends - or if they part ways?",
    "image": "placeholder.jpg",
    "programmeId": "ohShitDoomed" 
  }
])