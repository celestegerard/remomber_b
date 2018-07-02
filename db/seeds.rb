
families = Family.create([

  { last_name: 'Gerard' },
  { last_name: 'Bazzarone' },
  { last_name: 'Bob' },
  { last_name: 'Carr' },
  { last_name: 'Wilde' },
  { last_name: 'McArthur' },
  { last_name: 'Tenglesen' },
  { last_name: 'Brooks' },
  { last_name: 'Fitzgerald' },
  { last_name: 'Williams' }

  ])

  memories = Memory.create([

    {
      timestamp: '2018-02-28 09:12',
      title: '5th grade graduation',
      body: 'everytime we tried to go to the zoo, the torrential rain came.',
      member_id: 3,
      tag_id: 1
    },
    {
      timestamp: '2014-07-03 09:12',
      title: '3rd grade sockhop',
      body: 'dance dance dance! there was endless sunny-d',
      member_id: 2,
      tag_id: 3
    },
    {
      timestamp: '2007-04-05 03:20',
      title: 'your 3rd birthday',
      body: 'blue cake and lavender ruffled rompers',
      member_id: 3,
      tag_id: 1
    },
    {
      timestamp: '2001-04-28 09:12',
      title: 'spring break',
      body: 'we had spring break. so many cookies.',
      member_id: 2,
      tag_id: 2
    },
    {
      timestamp: '2018-07-14 03:22',
      title: 'the morning after the night in the hospital',
      body: 'we sat there in that old kitchen, looking at pancakes',
      member_id: 3,
      tag_id: 10
    },
    {
      timestamp: '1993-01-22 01:22',
      title: 'birth story',
      body: 'I was convinced it was going to be a hard labor.',
      member_id: 3,
      tag_id: 2
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
