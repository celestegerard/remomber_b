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

  members = Members.create([

    { first_name: 'Celeste',
      dob: 1993-01-22 09:03:27,
      is_account: true,
      family_id: 1
    },
    { first_name: 'Lizzy',
      dob: 1995-01-28 09:11:37,
      is_account: false,
      family_id: 1
    },
    { first_name: 'Christian',
      dob: 1997-04-30 10:12:09,
      is_account: false,
      family_id: 1
    },
    { first_name: 'Ben',
      dob: 2005-06-12 12:29:27,
      is_account: false,
      family_id: 1
    },
    { first_name: 'Sam',
      dob: 2005-06-12 12:29:27,
      is_account: false,
      family_id: 1
    }

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
