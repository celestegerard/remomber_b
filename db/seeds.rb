
families = Family.create([

  { last_name: 'Gerard' },
  { last_name: 'Bazzarone' },
  { last_name: 'Smith' },
  { last_name: 'Jones' }

  ])

  members = Member.create([
    {
      first_name: 'Caroline',
      dob: '1993-01-22 09:03:36',
      family_id: 4
    },
    {
      first_name: 'Lizzy',
      dob: '1995-01-28 10:03:36',
      family_id: 4
    },
    {
      first_name: 'Christian',
      middle_name: 'James',
      dob: '1997-04-30 12:03:36',
      family_id: 4
    },
    {
      first_name: 'Ashley',
      middle_name: 'Ann',
      dob: '1991-04-17 12:03:36',
      family_id: 4
    }
    ])

  memories = Memory.create([

    {
      timestamp: '2018-02-28 09:12',
      title: '5th grade graduation',
      body: 'it was so fun!',
      member_id: 1
    },
    {
      timestamp: '2014-07-03 09:12',
      title: '3rd grade sockhop',
      body: 'it was so fun!',
      member_id: 1
    },
    {
      timestamp: '2007-04-05 03:20',
      title: 'your 3rd birthday',
      body: 'it was so fun!',
      member_id: 1
    },
    {
      timestamp: '2001-04-28 09:12',
      title: 'spring break',
      body: 'it was so fun!',
      member_id: 1
    },
    {
      timestamp: '2018-07-14 03:22',
      title: 'the morning after the night in the hospital',
      body: 'it was so fun!',
      member_id: 1
    },
    {
      timestamp: '1993-01-22 01:22',
      title: 'birthday party story',
      body: 'it was so fun!',
      member_id: 1
    },
    {
      timestamp: '2018-02-28 09:12',
      title: '5th grade graduation',
      body: 'it was so fun!',
      member_id: 1
    },
    {
      timestamp: '2014-07-03 09:12',
      title: '3rd grade sockhop',
      body: 'it was so fun!',
      member_id: 1
    },
    {
      timestamp: '2007-04-05 03:20',
      title: 'your 3rd birthday',
      body: 'it was so fun!',
      member_id: 1
    },
    {
      timestamp: '2001-04-28 09:12',
      title: 'spring break',
      body: 'it was so fun!',
      member_id: 1
    },
    {
      timestamp: '2018-07-14 03:22',
      title: 'the morning after the night in the hospital',
      body: 'it was so fun!',
      member_id: 2
    },
    {
      timestamp: '1993-01-22 01:22',
      title: 'birth story',
      body: 'it was so fun!',
      member_id: 3
    },
    {
      timestamp: '1993-01-22 01:22',
      title: 'birth story',
      body: 'it was so fun!',
      member_id: 3
    },
    {
      timestamp: '2001-04-28 09:12',
      title: 'spring break',
      body: 'it was so fun!',
      member_id: 4
    },
    {
      timestamp: '2018-07-14 03:22',
      title: 'the morning after the night in the hospital',
      body: 'it was so fun!',
      member_id: 4
    },
    {
      timestamp: '1993-01-22 01:22',
      title: 'birth story',
      body: 'it was so fun!',
      member_id: 4
    },
    {
      timestamp: '1993-01-22 01:22',
      title: 'birth story',
      body: 'it was so fun!',
      member_id: 3
    }

    ])
