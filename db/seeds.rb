# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

families = Family.create([

  { last_name: 'Gerard' },
  { last_name: 'Bazzarone' },
  { last_name: 'Bennett' },
  { last_name: 'Carr' },
  { last_name: 'Wilde' },
  { last_name: 'McArthur' },
  { last_name: 'Tenglesen' },
  { last_name: 'Brooks' },
  { last_name: 'Fitzgerald' },
  { last_name: 'Williams' }

  ])



tags = Tag.create([

  { name: 'graduation' },
  { name: 'birthday' },
  { name: 'recital' },
  { name: 'sickness' },
  { name: 'doctors appointment' },
  { name: 'sayings' },
  { name: 'kindness' },
  { name: 'pancake breakfast' },
  { name: 'first' },
  { name: 'dream' }

  ])

#   Character.create(name: 'Luke', movie: movies.first)
