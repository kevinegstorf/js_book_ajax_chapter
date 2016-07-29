# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Event.delete_all

Event.create!([
                { id: 1, location: 'San Francisco, CA', date:  'May 1',
                  map: '/image/map-ca.png' },
                { id: 2, location: 'Austin, TX', date:  'May 15',
                  map: '/image/map-tx.png' },
                { id: 3, location: 'New York, NY', date:  'May 30',
                  map: '/image/map-ny.png' }
              ])

  #     {
  #       "location": "San Francisco, CA",
  #       "date": "May 1",
  #       "map": "img/map-ca.png"
  #     },
  #     {
  #       "location": "Austin, TX",
  #       "date": "May 15",
  #       "map": "img/map-tx.png"
  #     },
  #     {
  #       "location": "New York, NY",
  #       "date": "May 30",
  #       "map": "img/map-ny.png"
  #     }
  #   ]
